//
//  NSLayoutConstraintEXT.swift
//  SwiftTests
//
//  Created by Thomas Ricouard on 04/06/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    class func simpleConstrain(format: String, views vws: NSDictionary) -> AnyObject[] {
        return NSLayoutConstraint.constraintsWithVisualFormat(format, options: nil, metrics: nil, views: vws)
    }
    
}
