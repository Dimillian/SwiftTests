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
        
        self.imageView = UIImageView(frame: self.view.bounds)
        self.imageView.image = UIImage(named: "business-of-literature-500")
        self.view.addSubview(self.imageView)
        
        var visualEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var visualEffectView = UIVisualEffectView(effect: visualEffect)
        visualEffectView.frame = self.view.bounds
        self.view.addSubview(visualEffectView)
        
        
        var button = UIButton(frame: CGRectMake(10.0, 50.0, self.view.frame.size.width - 20.0, 50.0))
        button.setTitle("Touche Me", forState: UIControlState.Normal)
        button.addTarget(self, action: "onButton:", forControlEvents: UIControlEvents.TouchUpInside)
        visualEffectView.contentView.addSubview(button)
        
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
}
