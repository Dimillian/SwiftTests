//
//  CollectionViewCell.swift
//  SwiftTests
//
//  Created by Thomas Ricouard on 05/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

let CollectionViewCellId = "collectioViewCellID"

class CollectionViewCell: UICollectionViewCell {
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        self.backgroundColor = UIColor.greenColor()
    }
    
    class func layoutSize() -> CGSize {
        return CGSizeMake(50.0, 50.0)
    }
}
