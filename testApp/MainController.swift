//
//  MainController.swift
//  testApp
//
//  Created by Thomas Ricouard on 02/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

class MainController: NSObject {
   
    let networkManager = AFHTTPRequestOperationManager()
    var appDelegate: AppDelegate?
    var rootViewController = RootViewController(nibName: nil, bundle: nil)
    
    init(appDelegate: AppDelegate) {
        super.init()
        self.appDelegate = appDelegate;
        
        var navController = UINavigationController(rootViewController: self.rootViewController)
        navController.navigationBarCondensed = true
        self.appDelegate!.window!.rootViewController = navController
        
        self.cocoapodsDemo()
    }
    
    func cocoapodsDemo() {
        self.networkManager.GET("http://google.fr", parameters: nil,
            success: { (operation: AFHTTPRequestOperation!, responseObject: AnyObject!) in
                println(responseObject)
            },
            failure: nil)
    }
}
