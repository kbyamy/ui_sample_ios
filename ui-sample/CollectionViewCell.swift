//
//  CollectionViewCell.swift
//  ui-sample
//
//  Created by Yuki Kuboyama on 2019/10/20.
//  Copyright © 2019 Yuki Kuboyama. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var titleImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setTitleImage() {}
    
    func setTitleLabel(title: String) {
        titleLabel.text = title
    }
    
}
