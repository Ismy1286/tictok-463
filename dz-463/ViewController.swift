import UIKit
import SnapKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    private var ticTokPage = ["01", "02", "03", "04", "05", "06", "07", "00", "08", "09", "10", "11" ]
    
    private lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.delegate = self
        view.dataSource = self
        view.isPagingEnabled = true
        view.register(TicTokCell.self, forCellWithReuseIdentifier: "TicTokCell")
        return view
    }()
    
    private lazy var downLabel: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "1111")
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    
    private func setupSubviews() {
        
        view.backgroundColor = .black
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height * 0.05)
            make.left.right.equalToSuperview()
        }
        
        view.addSubview(downLabel)
        downLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(view.frame.height * (-0.027))
            make.top.equalTo(collectionView.snp.bottom)
            make.height.equalTo(view.frame.height * 0.078)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(
            width: view.frame.width,
            height: view.frame.height * 0.845)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    //
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    //        return 0
    //    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ticTokPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let index = indexPath.row
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TicTokCell", for: indexPath) as! TicTokCell
        cell.cellImage.image = UIImage(named: String(ticTokPage[index]))
        return cell
    }
}
