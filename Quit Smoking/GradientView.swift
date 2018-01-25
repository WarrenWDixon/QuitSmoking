//
//  GradientView.swift
//  GradientDemo
//
//  Created by Warren Dixon on 10/22/17.
//  Copyright © 2017 Warren Dixon. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    @IBInspectable var topColor: UIColor = UIColor.init(red: 15.0/255.0, green: 59.0/255.0, blue: 245.0/255.0, alpha: 0.3) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.init(red: 109.0/255.0, green: 249.0/255.0, blue: 253.0/255.0, alpha: 0.3) {
        didSet {
            self.setNeedsLayout()
        }
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x:0, y:0)
        gradientLayer.endPoint   = CGPoint(x:1, y:1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}


