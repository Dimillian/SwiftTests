//
//  RootViewController.swift
//  testApp
//
//  Created by Thomas Ricouard on 03/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var imageView: UIImageView = UIImageView()
    
    var toggled: Bool = true {
        didSet {
            self.toggleScale()
        }
    }
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Test"
        
        self.view.backgroundColor = UIColor.redColor()
        
        self.imageView = UIImageView(frame: CGRectZero)
        self.imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.imageView.image = UIImage(named: "business-of-literature-500")
        self.view.addSubview(self.imageView)
        
        var dic = ["imageView": self.imageView]

        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("H:|[imageView]|", views: dic))
        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("V:|[imageView]|", views: dic))
        
        var visualEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var visualEffectView = UIVisualEffectView(effect: visualEffect)
        visualEffectView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(visualEffectView)
        
        var viewContrainDic = ["visualView": visualEffectView]
        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("H:|[visualView]|", views: viewContrainDic))
        self.view.addConstraints(NSLayoutConstraint.simpleConstrain("V:|[visualView]|", views: viewContrainDic))
        
        var button = UIButton(frame: CGRectZero)
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        button.setTitle("Touche Me", forState: UIControlState.Normal)
        button.addTarget(self, action: "onButton:", forControlEvents: UIControlEvents.TouchUpInside)
        visualEffectView.contentView.addSubview(button)
        
        var buttonDic = ["button": button]
        visualEffectView.addConstraints(NSLayoutConstraint.simpleConstrain("H:|-20-[button]-20-|", views: buttonDic))
        visualEffectView.addConstraints(NSLayoutConstraint.simpleConstrain("V:|-150-[button]", views: buttonDic))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggleScale() {
        UIView.animateWithDuration(0.50, animations: {
            var scale = self.toggled ? 1.0 : 0.50
            self.imageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, scale, scale)
            self.imageView.center = self.view.center
        })
    }
    
    func onButton(sender: AnyObject) {
        self.toggled = !self.toggled
    }
    
    func onSearchButton(sender: AnyObject) {
        
    }
    
    override func willTransitionToTraitCollection(newCollection: UITraitCollection!,
        withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator!) {
        
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator!) {
        println(size)
    }
}
