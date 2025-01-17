//
//  AtomicColor.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI

fileprivate typealias LVL_D = AtomicColorBuilder.Dark.Level
fileprivate typealias LHL_D = AtomicColorBuilder.Dark.LevelHighlight
fileprivate typealias LVL_L = AtomicColorBuilder.Light.Level
fileprivate typealias LHL_L = AtomicColorBuilder.Light.LevelHighlight


fileprivate struct AtomicColorBuilder {
    struct Dark {
        struct Level {
            static let lA = CGFloat(0.16)
            static let lB = CGFloat(0.32)
            static let lC = CGFloat(0.48)
            static let lD = CGFloat(0.66)
        }
        struct LevelHighlight {
            static let lA = CGFloat(0.18)
            static let lB = CGFloat(0.36)
            static let lC = CGFloat(0.52)
            static let lD = CGFloat(0.66)
        }
    }
    struct Light {
        struct Level {
            static let lA = CGFloat(2)
            static let lB = CGFloat(6)
            static let lC = CGFloat(8)
            static let lD = CGFloat(10)
        }
        struct LevelHighlight {
            static let lA = CGFloat(0.8)
            static let lB = CGFloat(2.4)
            static let lC = CGFloat(4.0)
            static let lD = CGFloat(5.6)
        }
    }
}


public struct AtomicColor {
    
    private var isDark: Bool
    
    public var background: Color
    public var foreground: Color
    public var neutral: Color
    public var primary: Color
    public var secondary: Color
    private let lightColor : Color
    
    public init(background: Color,
                foreground: Color,
                neutral: Color,
                primary: Color,
                secondary: Color,
                light: Color = Color(hex: "0F0F0F"),
                isDark: Bool = false
    ) {
        self.background = background
        self .foreground = foreground
        self.neutral = neutral
        self.primary = primary
        self.lightColor = light
        self.isDark = isDark
        self.secondary = secondary
    }
    
    
}


extension AtomicColor {
    
    private func lightLevel(_ level: CGFloat) -> Color {
        lightColor.multiply(level)
    }
        
    private func addLight(_ level: CGFloat, to color: Color) -> Color {
        Color.sum(
            lightLevel(level),
            to: color
        )
    }
        
    private func subtractLight(_ level: CGFloat,to color: Color) -> Color {
        Color.subtract(
            lightLevel(level),
            to: color
        )
    }
    
}

extension AtomicColor {
    
    private func foreground(_ level: CGFloat) -> Color {
        addLight(level, to: foreground)
    }
    
    private func foregroundDark(_ level: CGFloat) -> Color {
        subtractLight(level, to: foreground)
    }
    
    public var foregroundA: Color {
        if isDark { foregroundDark(LVL_D.lA) }
        else { foreground(LVL_L.lA) }
    }
    
    public var foregroundB: Color {
        if isDark { foregroundDark(LVL_D.lB) }
        else { foreground(LVL_L.lB) }
    }
    
    public var foregroundC: Color {
        if isDark { foregroundDark(LVL_D.lC) }
        else { foreground(LVL_L.lC) }
    }
    
    public var foregroundD: Color {
        if isDark { foregroundDark(LVL_D.lD) }
        else { foreground(LVL_L.lD) }
    }
    
}

extension AtomicColor {
    
    private func background(_ o: CGFloat) -> Color {
        foreground.opacity(o)
    }
    
    
    public var backgroundA: Color {
        background(0.3)
    }
    
    public var backgroundB: Color {
        background(0.1)
    }
    
    public var backgroundC: Color {
        background(0.07)
    }
    
    public var backgroundD: Color {
        background(0.05)
    }
    
}

extension AtomicColor {
    
    private func neutral(_ level: CGFloat) -> Color {
        addLight(level, to: neutral)
    }
    
    private func neutralDark(_ level: CGFloat) -> Color {
        Color.subtract(
            lightLevel(level),
            to: neutral
        )
    }
    
    public var neutralA: Color {
        if isDark { neutralDark(LVL_D.lA) }
        else { neutral(LVL_L.lA) }
    }
    
    public var neutralB: Color {
        if isDark { neutralDark(LVL_D.lB) }
        else { neutral(LVL_L.lB) }
    }
    
    public var neutralC: Color {
        if isDark { neutralDark(LVL_D.lC) }
        else { neutral(LVL_L.lC) }
    }
    
    public var neutralD: Color {
        if isDark { neutralDark(LVL_D.lD) }
        else { neutral(LVL_L.lD) }
    }
    
}

extension AtomicColor {
    
    private func primary(_ level: CGFloat) -> Color {
        addLight(level, to: primary)
    }
    
    private func primaryDark(_ level: CGFloat) -> Color {
        subtractLight(level, to: primary)
    }
    
    public var primaryA: Color  {
        if isDark { primaryDark(LHL_D.lA) }
        else { primary(LHL_L.lA) }
    }
    
    public var primaryB: Color {
        if isDark { primaryDark(LHL_D.lB) }
        else { primary(LHL_L.lB) }
    }
    
    public var primaryC: Color {
        if isDark { primaryDark(LHL_D.lC) }
        else { primary(LHL_L.lC) }
    }
    
    public var primaryD: Color {
        if isDark { primaryDark(LHL_D.lD) }
        else { primary(LHL_L.lD) }
    }
    
}

extension AtomicColor {
    
    private func secondary(_ level: CGFloat) -> Color {
        addLight(level, to: secondary)
    }
    
    private func secondaryDark(_ level: CGFloat) -> Color {
        subtractLight(level, to: secondary)
    }
    
    public var secondaryA: Color  {
        if isDark { secondaryDark(LHL_D.lA) }
        else { secondary(LHL_L.lA) }
    }
    
    public var secondaryB: Color {
        if isDark { secondaryDark(LHL_D.lB) }
        else { secondary(LHL_L.lB) }
    }
    
    public var secondaryC: Color {
        if isDark { secondaryDark(LHL_D.lC) }
        else { secondary(LHL_L.lC) }
    }
    
    public var secondaryD: Color {
        if isDark { secondaryDark(LHL_D.lD) }
        else { secondary(LHL_L.lD) }
    }
}
