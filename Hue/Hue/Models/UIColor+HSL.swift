//
//  UIColor+HSL.swift
//  ColorPalette
//
//  Created by Adam Graham on 12/18/18.
//  Copyright © 2018 Adam Graham. All rights reserved.
//

import UIKit

/// An extension to provide conversion to and from HSL (hue, saturation, lightness) colors.
public extension UIColor {

    /// The components of a color in the HSL color model.
    typealias HSL = (
        hue: CGFloat,        // 0 to 1 (% of 360°)
        saturation: CGFloat, // 0 to 1 (% of 100)
        lightness: CGFloat   // 0 to 1 (% of 100)
    )

    /// The components of the color in the HSL color model.
    var hsl: HSL {
        var h: CGFloat = 0.0
        var s: CGFloat = 0.0
        var b: CGFloat = 0.0

        getHue(&h, saturation: &s, brightness: &b, alpha: nil)

        let l = ((2.0 - s) * b) / 2.0

        switch l {
        case 0.0:
            break
        case 1.0:
            s = 0.0
        case 0.0..<0.5:
            s = (s * b) / (l * 2.0)
        default:
            s = (s * b) / (2.0 - l * 2.0)
        }

        return HSL(hue: h, saturation: s, lightness: l)
    }

    /// Initializes a color from the components of a HSL color model.
    convenience init(hsl: HSL, alpha: CGFloat = 1.0) {
        let h = hsl.hue
        let t = hsl.saturation * ((hsl.lightness < 0.5) ? hsl.lightness : (1.0 - hsl.lightness))
        let b = hsl.lightness + t
        let s = (hsl.lightness > 0.0) ? (2.0 * t / b) : 0.0

        self.init(hue: h, saturation: s, brightness: b, alpha: alpha)
    }

}