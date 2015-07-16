//
//  CardView.swift
//  NamibDate
//
//  Created by Arno Smit on 16/07/15.
//  Copyright (c) 2015 Namib Lost in Sweden. All rights reserved.
//

import Foundation
import UIKit

class CardView: UIView {
    
    // making it private will make sure other classes don't have access
    private let imageView: UIImageView = UIImageView()
    private let nameLabel: UILabel = UILabel()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    init() {
        super.init(frame: CGRectZero)
        initialize()
    }
    
    private func initialize() {
        
        // setting the constraints to false since we'll set it manually in code
        imageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        imageView.backgroundColor = UIColor.redColor()
        self.addSubview(imageView)
        
        nameLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addSubview(nameLabel)
        
        backgroundColor = UIColor.whiteColor()
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.lightGrayColor().CGColor
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
    
    private func setConstraints() {
        // X
        addConstraint(NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0))
        
        // Y
        addConstraint(NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0))
        
        // Width
        addConstraint(NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0))
        
        // Height
        addConstraint(NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 0))
    }
    
    
}