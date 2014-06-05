//
//  CollectionViewLayout.swift
//  SwiftTests
//
//  Created by Thomas Ricouard on 05/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

class CollectionViewLayout: UICollectionViewFlowLayout {

    init() {
        super.init()
        
        self.itemSize = CollectionViewCell.layoutSize()
    }
}
