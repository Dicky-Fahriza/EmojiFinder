//
//  RandomColor.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct RandomColor {
    static func bgView() -> Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1))
    }
}
