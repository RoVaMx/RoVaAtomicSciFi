//
//  SwiftUIView.swift
//  
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI

public extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default: (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    func toHex() -> String {
        let c = self.rgba()
        return String(format: "#%02X%02X%02X%02X",
                      Int(c.r * 255),
                      Int(c.g * 255),
                      Int(c.b * 255),
                      Int(c.a * 255))
    }
    
    static func sum(_ color1: Color, to color2: Color) -> Color {
        let c1 = color1.rgba()
        let c2 = color2.rgba()
        return Color(UIColor(
            red: min(c1.r + c2.r, 1),
            green: min(c1.g + c2.g, 1),
            blue: min(c1.b + c2.b, 1),
            alpha: min(c1.a + c2.a, 1))
        )
    }
    
    static func subtract(_ color1: Color, to color2: Color) -> Color {
        let c1 = color1.rgba()
        let c2 = color2.rgba()
        return Color(UIColor(
            red: max(c2.r - c1.r, 0),
            green: max(c2.g - c1.g, 0),
            blue: max(c2.b - c1.b, 0),
            alpha: min(c2.a - c1.a, 1))
        )
    }
    
    func rgba() -> (r: CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        UIColor(self).getRed(&r, green: &g, blue: &b, alpha: &a)
        return (r,g,b,a)
    }
    
     func multiply(_ times: CGFloat) -> Color {
        let c = self.rgba()
        return Color(UIColor(
            red: min(c.r * times, 1),
            green: min(c.g * times, 1),
            blue: min(c.b * times, 1),
            alpha: min(c.a * times, 1))
        )
    }
}
