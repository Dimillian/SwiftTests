//
//  CollectionViewController.swift
//  SwiftTests
//
//  Created by Thomas Ricouard on 05/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var layout: UICollectionViewFlowLayout! =  nil
    var collectionView: UICollectionView! = nil
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)  {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        self.layout = UICollectionViewFlowLayout()
        self.collectionView = UICollectionView(frame: CGRectZero, collectionViewLayout: self.layout)
        self.collectionView.setCollectionViewLayout(layout, animated: false)
        self.collectionView.dataSource = self;
        self.collectionView.delegate = self
        self.collectionView.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCellId)
        
        self.view.addSubview(self.collectionView)
        
        setupContraints()
    }
    
    func setupContraints() {
        self.collectionView.setTranslatesAutoresizingMaskIntoConstraints(false)
        var views = ["collectionView": self.collectionView]
        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("H:|[collectionView]|", views: views))
        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("V:|[collectionView]|", views: views))
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell!
    {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionViewCellId, forIndexPath: indexPath) as CollectionViewCell
        if (cell == nil) {
            cell = CollectionViewCell(frame: CGRectZero)
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int  {
        return 50
    }
    
    
}
