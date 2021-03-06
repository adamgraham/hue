//
//  UIColor+CMYK.swift
//  Colorly
//
//  Created by Adam Graham on 3/22/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import UIKit

/// An extension to provide conversion to and from CMYK (cyan, magenta, yellow, black) colors.
public extension UIColor {

    // MARK: CMYK

    /// The CMYK (cyan, magenta, yellow, black) components of a color, in the range [0, 100%].
    struct CMYK: Hashable {

        /// The cyan component of the color, in the range [0, 100%].
        public var cyan: CGFloat
        /// The magenta component of the color, in the range [0, 100%].
        public var magenta: CGFloat
        /// The yellow component of the color, in the range [0, 100%].
        public var yellow: CGFloat
        /// The black component of the color, in the range [0, 100%].
        public var black: CGFloat

        /// Initializes the CMYK (cyan, magenta, yellow, black) components of a color, in the range [0, 100%].
        /// - parameter cyan: The cyan component of the color, in the range [0, 100%].
        /// - parameter magenta: The magenta component of the color, in the range [0, 100%].
        /// - parameter yellow: The yellow component of the color, in the range [0, 100%].
        /// - parameter black: The black component of the color, in the range [0, 100%].
        public init(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat) {
            self.cyan = cyan
            self.magenta = magenta
            self.yellow = yellow
            self.black = black
        }

    }

    /// The CMYK (cyan, magenta, yellow, black) components of the color, in the range [0, 100%].
    var cmyk: CMYK {
        let rgb = self.rgbComponents

        let k = 1.0 - max(rgb.r, rgb.g, rgb.b)
        var c = (1.0 - rgb.r - k) / (1.0 - k)
        var m = (1.0 - rgb.g - k) / (1.0 - k)
        var y = (1.0 - rgb.b - k) / (1.0 - k)

        if c.isNaN { c = 0.0 }
        if m.isNaN { m = 0.0 }
        if y.isNaN { y = 0.0 }

        return CMYK(cyan: c * 100.0,
                    magenta: m * 100.0,
                    yellow: y * 100.0,
                    black: k * 100.0)
    }

    /// Initializes a color from CMYK (cyan, magenta, yellow, black) components.
    /// - parameter cmyk: The components used to initialize the color.
    /// - parameter alpha: The alpha value of the color.
    convenience init(_ cmyk: CMYK, alpha: CGFloat = 1.0) {
        let c = cmyk.cyan / 100.0
        let m = cmyk.magenta / 100.0
        let y = cmyk.yellow / 100.0
        let k = cmyk.black / 100.0

        let r = (1.0 - c) * (1.0 - k)
        let g = (1.0 - m) * (1.0 - k)
        let b = (1.0 - y) * (1.0 - k)

        self.init(red: r, green: g, blue: b, alpha: alpha)
    }

}
