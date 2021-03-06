//
//  UIColor+YCbCrTest.swift
//  ColorlyTests
//
//  Created by Adam Graham on 4/17/19.
//  Copyright © 2019 Adam Graham. All rights reserved.
//

import XCTest

@testable import Colorly

class UIColor_YCbCrTest: XCTestCase {

    typealias YCbCr = UIColor.YCbCr

    private let accuracy: CGFloat = 0.001

    func testYCbCrRec601() {
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

    func testYCbCrRec601Init() {
        assert(UIColor(YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5)), .white)
        assert(UIColor(YCbCr(Y: 76.245, Cb: 84.472, Cr: 255.0)), .red)
        assert(UIColor(YCbCr(Y: 149.685, Cb: 43.028, Cr: 20.735)), .green)
        assert(UIColor(YCbCr(Y: 29.07, Cb: 255.0, Cr: 106.765)), .blue)
        assert(UIColor(YCbCr(Y: 178.755, Cb: 170.528, Cr: 0.0)), .cyan)
        assert(UIColor(YCbCr(Y: 105.315, Cb: 211.972, Cr: 234.265)), .magenta)
        assert(UIColor(YCbCr(Y: 225.93, Cb: 0.0, Cr: 148.235)), .yellow)
        assert(UIColor(YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5)), .black)
        assert(UIColor(YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5)), .darkGray)
        assert(UIColor(YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5)), .gray)
        assert(UIColor(YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5)), .lightGray)
        assert(UIColor(YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), alpha: 0.0), .clear)
    }

    func testYCbCrRec709() {
        assert(UIColor.white.yCbCr(.rec709), YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.red.yCbCr(.rec709), YCbCr(Y: 54.213, Cb: 98.284, Cr: 255.0))
        assert(UIColor.green.yCbCr(.rec709), YCbCr(Y: 182.376, Cb: 29.216, Cr: 11.691))
        assert(UIColor.blue.yCbCr(.rec709), YCbCr(Y: 18.411, Cb: 255.0, Cr: 115.809))
        assert(UIColor.cyan.yCbCr(.rec709), YCbCr(Y: 200.787, Cb: 156.716, Cr: 0.0))
        assert(UIColor.magenta.yCbCr(.rec709), YCbCr(Y: 72.624, Cb: 225.784, Cr: 243.309))
        assert(UIColor.yellow.yCbCr(.rec709), YCbCr(Y: 236.589, Cb: 0.0, Cr: 139.191))
        assert(UIColor.black.yCbCr(.rec709), YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.darkGray.yCbCr(.rec709), YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.gray.yCbCr(.rec709), YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5))
        assert(UIColor.lightGray.yCbCr(.rec709), YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5))
        assert(UIColor.clear.yCbCr(.rec709), YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5))
    }

    func testYCbCrRec709Init() {
        assert(UIColor(YCbCr(Y: 255.0, Cb: 127.5, Cr: 127.5), encoding: .rec709), .white)
        assert(UIColor(YCbCr(Y: 54.213, Cb: 98.284, Cr: 255.0), encoding: .rec709), .red)
        assert(UIColor(YCbCr(Y: 182.376, Cb: 29.216, Cr: 11.691), encoding: .rec709), .green)
        assert(UIColor(YCbCr(Y: 18.411, Cb: 255.0, Cr: 115.809), encoding: .rec709), .blue)
        assert(UIColor(YCbCr(Y: 200.787, Cb: 156.716, Cr: 0.0), encoding: .rec709), .cyan)
        assert(UIColor(YCbCr(Y: 72.624, Cb: 225.784, Cr: 243.309), encoding: .rec709), .magenta)
        assert(UIColor(YCbCr(Y: 236.589, Cb: 0.0, Cr: 139.191), encoding: .rec709), .yellow)
        assert(UIColor(YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .rec709), .black)
        assert(UIColor(YCbCr(Y: 85.0, Cb: 127.5, Cr: 127.5), encoding: .rec709), .darkGray)
        assert(UIColor(YCbCr(Y: 127.5, Cb: 127.5, Cr: 127.5), encoding: .rec709), .gray)
        assert(UIColor(YCbCr(Y: 170.0, Cb: 127.5, Cr: 127.5), encoding: .rec709), .lightGray)
        assert(UIColor(YCbCr(Y: 0.0, Cb: 127.5, Cr: 127.5), encoding: .rec709, alpha: 0.0), .clear)
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
