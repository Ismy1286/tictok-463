import Foundation
import UIKit
import SnapKit


class TicTokCell: UICollectionViewCell {
    
    lazy var bookImage: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
//    lazy var bookStar: CustonButton = {
//        let view = CustonButton()
//        view.setImage(UIImage(named:"sss"), for: .normal)
//        return view
//    }()
    
    lazy var bookPrice: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 21, weight: .bold)
        view.textColor = UIColor.red
        return view
    }()
    
    lazy var bookWriter: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 16)
        view.textColor = UIColor(red: 51/255, green: 60/255, blue: 68/255, alpha: 1)
        return view
    }()
    
    lazy var bookTitleView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var bookTitle: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.numberOfLines = 0
        view.sizeToFit()
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(bookImage)
        bookImage.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        addSubview(bookPrice)
        bookPrice.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalTo(bookImage.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.08)
        }
        
//        addSubview(bookStar)
//        bookStar.snp.makeConstraints { make in
//            make.left.equalTo(bookPrice.snp.right)
//            make.right.equalToSuperview().offset(-3)
//            make.top.equalTo(bookImage.snp.bottom).offset(4)
//            make.width.height.equalTo(23)
//        }
        
        addSubview(bookWriter)
        bookWriter.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(bookPrice.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.06)
        }
        
        addSubview(bookTitleView)
        bookTitleView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(bookWriter.snp.bottom)
            make.height.equalToSuperview().multipliedBy(0.15)
        }
        
        bookTitleView.addSubview(bookTitle)
        bookTitle.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
        }
    }
}
