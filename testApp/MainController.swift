//
//  MainController.swift
//  testApp
//
//  Created by Thomas Ricouard on 02/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

class MainController: NSObject {
   
    var appDelegate: AppDelegate?
    var rootViewController = RootViewController(nibName: nil, bundle: nil)
    
    init(appDelegate: AppDelegate) {
        super.init()
        self.appDelegate = appDelegate;
        
        var navController = UINavigationController(rootViewController: self.rootViewController)
        navController.navigationBarCondensed = true
        self.appDelegate!.window!.rootViewController = navController
    }
}
