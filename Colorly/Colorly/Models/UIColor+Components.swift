//
//  UIColor+Components.swift
//  Colorly
//
//  Created by Adam Graham on 4/3/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import UIKit

/// An extension to retrieve the RGBA (red, green, blue, alpha) components of a color.
public extension UIColor {

    // MARK: RGBA Components

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

    /// The red, green, and blue components of the color, in the range [0, 1].
    var rgbComponents: (r: CGFloat, g: CGFloat, b: CGFloat) {
        var (r, g, b) = (CGFloat(), CGFloat(), CGFloat())
        getRed(&r, green: &g, blue: &b, alpha: nil)
        return (r, g, b)
    }

    /// The red, green, blue, and alpha components of the color, in the range [0, 1].
    var rgbaComponents: (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        var (r, g, b, a) = (CGFloat(), CGFloat(), CGFloat(), CGFloat())
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r, g, b, a)
    }

    /// The alpha, red, green, and blue components of the color, in the range [0, 1].
    var argbComponents: (a: CGFloat, r: CGFloat, g: CGFloat, b: CGFloat) {
        var (a, r, g, b) = (CGFloat(), CGFloat(), CGFloat(), CGFloat())
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return (a, r, g, b)
    }

    /// Initializes a color from a tuple of RGB components.
    /// - parameter rgb: The components used to initialize the color.
    /// - parameter alpha: The alpha value of the color.
    convenience init(rgb: (r: CGFloat, g: CGFloat, b: CGFloat), alpha: CGFloat = 1.0) {
        self.init(red: rgb.r, green: rgb.g, blue: rgb.b, alpha: alpha)
    }

    /// Initializes a color from a tuple of RGBA components.
    /// - parameter rgba: The components used to initialize the color.
    /// - parameter alpha: The alpha value of the color.
    convenience init(rgba: (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat)) {
        self.init(red: rgba.r, green: rgba.g, blue: rgba.b, alpha: rgba.a)
    }

    /// Initializes a color from a tuple of ARGB components.
    /// - parameter argb: The components used to initialize the color.
    /// - parameter alpha: The alpha value of the color.
    convenience init(argb: (a: CGFloat, r: CGFloat, g: CGFloat, b: CGFloat)) {
        self.init(red: argb.r, green: argb.g, blue: argb.b, alpha: argb.a)
    }

}

/// An extension to retrieve the HSB (hue, saturation, brightness) components of a color.
public extension UIColor {

    // MARK: HSB Components

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

    /// The hue, saturation, and brightness components of the color, in the range [0, 1].
    var hsbComponents: (h: CGFloat, s: CGFloat, b: CGFloat) {
        var (h, s, b) = (CGFloat(), CGFloat(), CGFloat())
        getHue(&h, saturation: &s, brightness: &b, alpha: nil)
        return (h, s, b)
    }

    /// Initializes a color from a tuple of HSB components.
    /// - parameter hsb: The components used to initialize the color.
    /// - parameter alpha: The alpha value of the color.
    convenience init(hsb: (h: CGFloat, s: CGFloat, b: CGFloat), alpha: CGFloat = 1.0) {
        self.init(hue: hsb.h, saturation: hsb.s, brightness: hsb.b, alpha: alpha)
    }

}

/// An extension to retrieve the grayscale components of a color.
public extension UIColor {

    // MARK: Grayscale Components

    /// The white component of the color, in the range [0, 1].
    var whiteComponent: CGFloat {
        var w = CGFloat()
        getWhite(&w, alpha: nil)
        return w
    }

}
