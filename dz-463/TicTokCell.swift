import Foundation
import UIKit
import SnapKit


class TicTokCell: UICollectionViewCell {
    
    lazy var cellImage: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(cellImage)
        cellImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
