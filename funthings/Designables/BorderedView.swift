//
//  DesignableButton.swift
//  funthings
//
//  Created by Hunter on 1/18/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

@IBDesignable public class BorderedView: UIView {
    
    @IBInspectable public var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var clipping: Bool = true {
        didSet {
            layer.masksToBounds = clipping
        }
    }
    
}
