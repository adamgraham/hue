//
//  UIColor+Components.swift
//  Hue
//
//  Created by Adam Graham on 4/3/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import UIKit

/// An extension to retrieve the RGBA (red, green, blue, alpha) components of a color.
public extension UIColor {

    /// The red component of the color, in the range [0, 1].
    var redComponent: CGFloat {
        var r = CGFloat()
        getRed(&r, green: nil, blue: nil, alpha: nil)
        return r
    }

    /// The green component of the color, in the range [0, 1].
    var greenComponent: CGFloat {
        var g = CGFloat()
        getRed(nil, green: &g, blue: nil, alpha: nil)
        return g
    }

    /// The blue component of the color, in the range [0, 1].
    var blueComponent: CGFloat {
        var b = CGFloat()
        getRed(nil, green: nil, blue: &b, alpha: nil)
        return b
    }

    /// The alpha component of the color, in the range [0, 1].
    var alphaComponent: CGFloat {
        var a = CGFloat()
        getRed(nil, green: nil, blue: nil, alpha: &a)
        return a
    }

}

/// An extension to retrieve the HSB (hue, saturation, brightness) components of a color.
public extension UIColor {

    /// The hue component of the color, in the range [0, 1].
    var hueComponent: CGFloat {
        var h = CGFloat()
        getHue(&h, saturation: nil, brightness: nil, alpha: nil)
        return h
    }

    /// The saturation component of the color, in the range [0, 1].
    var saturationComponent: CGFloat {
        var s = CGFloat()
        getHue(nil, saturation: &s, brightness: nil, alpha: nil)
        return s
    }

    /// The brightness component of the color, in the range [0, 1].
    var brightnessComponent: CGFloat {
        var b = CGFloat()
        getHue(nil, saturation: nil, brightness: &b, alpha: nil)
        return b
    }

}

/// An extension to retrieve the grayscale components of a color.
public extension UIColor {

    /// The white component of the color, in the range [0, 1].
    var whiteComponent: CGFloat {
        var w = CGFloat()
        getWhite(&w, alpha: nil)
        return w
    }

}
