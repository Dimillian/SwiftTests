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
    
    func onButton(sender: AnyObject) {
        UIView.animateWithDuration(0.50, animations: {
            self.imageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.50, 0.50)
            self.imageView.center = self.view.center
        })
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
