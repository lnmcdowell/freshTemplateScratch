//
//  Extension.swift
//  freshTemplateScratch
//
//  Created by Nathaniel Mcdowell on 8/3/19.
//  Copyright © 2019 Nathaniel Mcdowell. All rights reserved.
//

import UIKit

extension UIView {
    func doConstraints(top:NSLayoutYAxisAnchor?, left:NSLayoutXAxisAnchor?, bottom:NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop:CGFloat, paddingLeft:CGFloat, paddingBottom:CGFloat, paddingRight:CGFloat, width:CGFloat, height:CGFloat){
        
        if let top = top{
        self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
        self.leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
        self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right {
        self.trailingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if width != 0{
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
            
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
}
