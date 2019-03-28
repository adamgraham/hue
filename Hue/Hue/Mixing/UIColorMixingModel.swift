//
//  UIColorMixingModel.swift
//  Hue
//
//  Created by Adam Graham on 3/27/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import UIKit

public extension UIColor {

    /// A model that describes how colors are mixed together to form all other colors.
    public enum MixingModel {

        /// A mixing model that leads to the RGB color model with primary colors of red, green,
        /// and blue. The absence of color is black, and the presence of all three primary colors is
        /// white. Colors are added from black to form white. Additive color mixing simulates light.
        case additive

        /// A mixing model that leads to the CMYK color model with primary colors of cyan,
        /// magenta, and yellow. The absence of color is white, and the presence of all three
        /// primary colors is black. Colors are subtracted from black to form white. Subtractive
        /// color mixing simulates print.
        case subtractive

        /// A mixing model that leads to the RYB color model with primary colors of red, yellow,
        /// and blue. The absence of color is white, and the presence of all three primary colors is
        /// black. Traditional color mixing simulates paint.
        case traditional

        /// The primary colors of the mixing model.
        public var primaryColors: (UIColor, UIColor, UIColor) {
            switch self {
            case .additive:
                return (.red, .green, .blue)
            case .subtractive:
                return (.cyan, .magenta, .yellow)
            case .traditional:
                return (.red, .yellow, .blue)
            }
        }

        /// The secondary colors of the mixing model.
        public var secondaryColors: (UIColor, UIColor, UIColor) {
            switch self {
            case .additive:
                return (.cyan, .magenta, .yellow)
            case .subtractive:
                return (.red, .green, .blue)
            case .traditional:
                return (.purple, .orange, .green)
            }
        }

        /// The tertiary colors of the mixing model, created by mixing the primary colors with the
        /// secondary colors.
        public var tertiaryColors: (UIColor, UIColor, UIColor, UIColor, UIColor, UIColor) {
            let primary = self.primaryColors
            let secondary = self.secondaryColors
            return (primary.0.mixed(with: secondary.1),
                    primary.0.mixed(with: secondary.2),
                    primary.1.mixed(with: secondary.0),
                    primary.1.mixed(with: secondary.2),
                    primary.2.mixed(with: secondary.0),
                    primary.2.mixed(with: secondary.1))
        }

    }

}