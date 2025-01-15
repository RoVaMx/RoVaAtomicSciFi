//
//  ColorSchemeExtension.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI

public extension ColorScheme {
        
    // https://mui.com/material-ui/customization/color/?srsltid=AfmBOoqXbv3A41Iz1fKMN5YTtWk2HRiZa5nPAEmMN3Cgc5Rzq6-ScHKl
    private static let neutral      : Color = Color(hex: "424242")
    private static let primary      : Color = Color(hex: "c96739")
    private static let secondary    : Color = Color(hex: "399bc9")
    private static let background   : Color = Color(hex: "eeeeee")
    private static let foreground   : Color = Color(hex: "212121")
    
    private static var backgroundDark: Color { foreground }
    private static var foregroundDark: Color { background }
    
    
    private var colorLight  : AtomicColor {
        AtomicColor(background: Self.background,
                    foreground: Self.foreground,
                    neutral: Self.neutral,
                    primary: Self.primary,
                    secondary: Self.secondary,
                    isDark: false)
    }
    
    private var colorDark  : AtomicColor {
        AtomicColor(background: Self.backgroundDark,
                    foreground: Self.foregroundDark,
                    neutral: Self.neutral,
                    primary: Self.primary,
                    secondary: Self.secondary,
                    isDark: true)
    }
    
    
    var color: AtomicColor {
        switch self {
        case .dark : colorDark
        case .light: colorLight
        default :
            colorLight
        }
    }
    
}
