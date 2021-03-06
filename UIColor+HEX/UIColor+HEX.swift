//
//  UIColor+HEX.swift
//  JiShiQiangDan
//
//  Created by Li Dong on 2020/9/23.
//  Copyright © 2020 dongdonghua. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(rgb: rgb, alpha: 1.0)
    }
    
    convenience init(rgb: UInt, alpha: Float) {
        self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat((rgb & 0x0000FF)) / 255.0,
                  alpha: CGFloat(alpha))
    }
    
    static func jl_colorInt(int:UInt) -> UIColor {
        return UIColor(rgb:int,alpha: 1.0)
    }
    
    static func jl_colorInt(int:UInt,alpha: Float) -> UIColor {
        return UIColor(rgb:int,alpha: alpha)
    }
}
