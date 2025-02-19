//
//  Label++.swift
//  RandomColor
//
//  Created by 곽다은 on 2/19/25.
//

import UIKit

extension UILabel {
    func updateColorInfo(using color: UIColor) {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        if color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            let redValue = Int(RGBLabelConstants.maxColorValue * red)
            let greenValue = Int(RGBLabelConstants.maxColorValue * green)
            let blueValue = Int(RGBLabelConstants.maxColorValue * blue)
            self.text = String(format: RGBLabelConstants.colorInfoFormat, redValue, greenValue, blueValue)
        }
    }
}
