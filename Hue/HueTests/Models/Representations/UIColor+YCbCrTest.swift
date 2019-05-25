//
//  UIColor+YCbCrTest.swift
//  HueTests
//
//  Created by Adam Graham on 4/17/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import XCTest

@testable import Hue

class UIColor_YCbCrTest: XCTestCase {

    typealias YCbCr = UIColor.YCbCr

    private let accuracy: CGFloat = 0.001

    func testYCbCrStandard() {
        assert(UIColor.white.yCbCr, YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.red.yCbCr, YCbCr(Y: 76.245, Cb: 84.472, Cr: 255.0))
        assert(UIColor.green.yCbCr, YCbCr(Y: 149.685, Cb: 43.028, Cr: 20.735))
        assert(UIColor.blue.yCbCr, YCbCr(Y: 29.07, Cb: 255.0, Cr: 106.765))
        assert(UIColor.cyan.yCbCr, YCbCr(Y: 178.755, Cb: 170.528, Cr: 0.0))
        assert(UIColor.magenta.yCbCr, YCbCr(Y: 105.315, Cb: 211.972, Cr: 234.265))
        assert(UIColor.yellow.yCbCr, YCbCr(Y: 225.93, Cb: 0.0, Cr: 148.235))
        assert(UIColor.black.yCbCr, YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.darkGray.yCbCr, YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.gray.yCbCr, YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5))
        assert(UIColor.lightGray.yCbCr, YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.clear.yCbCr, YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
    }

    func testYCbCrStandardInit() {
        assert(UIColor(yCbCr: YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5), encoding: .standard), .white)
        assert(UIColor(yCbCr: YCbCr(Y: 76.245, Cb: 84.472, Cr: 255.0), encoding: .standard), .red)
        assert(UIColor(yCbCr: YCbCr(Y: 149.685, Cb: 43.028, Cr: 20.735), encoding: .standard), .green)
        assert(UIColor(yCbCr: YCbCr(Y: 29.07, Cb: 255.0, Cr: 106.765), encoding: .standard), .blue)
        assert(UIColor(yCbCr: YCbCr(Y: 178.755, Cb: 170.528, Cr: 0.0), encoding: .standard), .cyan)
        assert(UIColor(yCbCr: YCbCr(Y: 105.315, Cb: 211.972, Cr: 234.265), encoding: .standard), .magenta)
        assert(UIColor(yCbCr: YCbCr(Y: 225.93, Cb: 0.0, Cr: 148.235), encoding: .standard), .yellow)
        assert(UIColor(yCbCr: YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .standard), .black)
        assert(UIColor(yCbCr: YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5), encoding: .standard), .darkGray)
        assert(UIColor(yCbCr: YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5), encoding: .standard), .gray)
        assert(UIColor(yCbCr: YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5), encoding: .standard), .lightGray)
        assert(UIColor(yCbCr: YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .standard, alpha: 0.0), .clear)
    }

    func testYCbCrHDTV() {
        assert(UIColor.white.yCbCr(.hdtv), YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.red.yCbCr(.hdtv), YCbCr(Y: 54.213, Cb: 98.284, Cr: 255.0))
        assert(UIColor.green.yCbCr(.hdtv), YCbCr(Y: 182.376, Cb: 29.216, Cr: 11.691))
        assert(UIColor.blue.yCbCr(.hdtv), YCbCr(Y: 18.411, Cb: 255.0, Cr: 115.809))
        assert(UIColor.cyan.yCbCr(.hdtv), YCbCr(Y: 200.787, Cb: 156.716, Cr: 0.0))
        assert(UIColor.magenta.yCbCr(.hdtv), YCbCr(Y: 72.624, Cb: 225.784, Cr: 243.309))
        assert(UIColor.yellow.yCbCr(.hdtv), YCbCr(Y: 236.589, Cb: 0.0, Cr: 139.191))
        assert(UIColor.black.yCbCr(.hdtv), YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.darkGray.yCbCr(.hdtv), YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.gray.yCbCr(.hdtv), YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5))
        assert(UIColor.lightGray.yCbCr(.hdtv), YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.clear.yCbCr(.hdtv), YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
    }

    func testYCbCrHDTVInit() {
        assert(UIColor(yCbCr: YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5), encoding: .hdtv), .white)
        assert(UIColor(yCbCr: YCbCr(Y: 54.213, Cb: 98.284, Cr: 255.0), encoding: .hdtv), .red)
        assert(UIColor(yCbCr: YCbCr(Y: 182.376, Cb: 29.216, Cr: 11.691), encoding: .hdtv), .green)
        assert(UIColor(yCbCr: YCbCr(Y: 18.411, Cb: 255.0, Cr: 115.809), encoding: .hdtv), .blue)
        assert(UIColor(yCbCr: YCbCr(Y: 200.787, Cb: 156.716, Cr: 0.0), encoding: .hdtv), .cyan)
        assert(UIColor(yCbCr: YCbCr(Y: 72.624, Cb: 225.784, Cr: 243.309), encoding: .hdtv), .magenta)
        assert(UIColor(yCbCr: YCbCr(Y: 236.589, Cb: 0.0, Cr: 139.191), encoding: .hdtv), .yellow)
        assert(UIColor(yCbCr: YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .hdtv), .black)
        assert(UIColor(yCbCr: YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5), encoding: .hdtv), .darkGray)
        assert(UIColor(yCbCr: YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5), encoding: .hdtv), .gray)
        assert(UIColor(yCbCr: YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5), encoding: .hdtv), .lightGray)
        assert(UIColor(yCbCr: YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .hdtv, alpha: 0.0), .clear)
    }

    private func assert(_ color: UIColor, _ expected: UIColor) {
        XCTAssertEqual(color, expected, accuracy: self.accuracy)
    }

    private func assert(_ yCbCr: YCbCr, _ expected: YCbCr) {
        XCTAssertEqual(yCbCr.Y, expected.Y, accuracy: self.accuracy)
        XCTAssertEqual(yCbCr.Cb, expected.Cb, accuracy: self.accuracy)
        XCTAssertEqual(yCbCr.Cr, expected.Cr, accuracy: self.accuracy)
    }

}
