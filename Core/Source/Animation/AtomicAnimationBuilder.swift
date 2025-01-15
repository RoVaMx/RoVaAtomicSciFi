//
//  AtomicAnimationBuilder.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI

public typealias AAB = AtomicAnimationBuilder

public struct AtomicAnimationBuilder {
    
    public static let dSSlow : TimeInterval = 1.0
    public static let dSlow : TimeInterval = 0.5
    public static let dNormal : TimeInterval = 0.3
    public static let dFast : TimeInterval = 0.2
    public static let dSFast : TimeInterval = 0.08
    
    public static let ebSSlow : TimeInterval = dSSlow.goldenDown
    public static let ebSlow : TimeInterval = dSlow.goldenDown
    public static let ebNormal : TimeInterval = dNormal.goldenDown
    public static let ebFast : TimeInterval = dFast.goldenDown
    public static let ebSFast : TimeInterval = dSFast.goldenDown
    
    public struct BuilderType {
        public let superSlow: Animation
        public let slow: Animation
        public let normal: Animation
        public let fast : Animation
        public let superFast : Animation
    }
    
    public static let bounce = BuilderType(
        superSlow:.bouncy(duration: dSSlow,extraBounce: ebSSlow),
        slow: .bouncy(duration: dSlow,extraBounce: ebSlow),
        normal: .bouncy(duration: dNormal,extraBounce: ebNormal),
        fast: .bouncy(duration: dFast,extraBounce: ebFast),
        superFast: .bouncy(duration: dSFast,extraBounce: ebSFast)
    )
    
    public static let easeIn = BuilderType(
        superSlow: .easeIn(duration: dSSlow),
        slow: .easeIn(duration: dSlow),
        normal: .easeIn(duration: dNormal),
        fast: .easeIn(duration: dFast),
        superFast: .easeIn(duration: dSFast)
    )
    
    public static let easeOut = BuilderType(
        superSlow: .easeOut(duration: dSSlow),
        slow: .easeOut(duration: dSlow),
        normal: .easeOut(duration: dNormal),
        fast: .easeOut(duration: dFast),
        superFast: .easeOut(duration: dSFast)
    )
    
    public static let easeInOut = BuilderType(
        superSlow: .easeInOut(duration: dSSlow),
        slow: .easeInOut(duration: dSlow),
        normal: .easeInOut(duration: dNormal),
        fast: .easeInOut(duration: dFast),
        superFast: .easeInOut(duration: dSFast)
    )
    
    public static let interactiveSpring = BuilderType(
        superSlow: .interactiveSpring(duration: dSSlow,extraBounce: ebSSlow),
        slow: .interactiveSpring(duration: dSlow,extraBounce: ebSlow),
        normal: .interactiveSpring(duration: dNormal,extraBounce: ebNormal),
        fast: .interactiveSpring(duration: dFast,extraBounce: ebFast),
        superFast: .interactiveSpring(duration: dSFast,extraBounce: ebSFast)
    )
    
    public static let linear = BuilderType(
        superSlow: .linear(duration: dSlow),
        slow: .linear(duration: dSlow),
        normal: .linear(duration: dNormal),
        fast: .linear(duration: dFast),
        superFast: .linear(duration: dFast)
    )
    
    public static let smooth = BuilderType(
        superSlow: .smooth(duration: dSSlow,extraBounce: ebSSlow),
        slow: .smooth(duration: dSlow,extraBounce: ebSlow),
        normal: .smooth(duration: dNormal,extraBounce: ebNormal),
        fast: .smooth(duration: dFast,extraBounce: ebFast),
        superFast: .smooth(duration: dSFast,extraBounce: ebSFast)
    )
    
    public static let snappy = BuilderType(
        superSlow: .snappy(duration: dSSlow,extraBounce: ebSSlow),
        slow: .snappy(duration: dSlow,extraBounce: ebSlow),
        normal: .snappy(duration: dNormal,extraBounce: ebNormal),
        fast: .snappy(duration: dFast,extraBounce: ebFast),
        superFast: .snappy(duration: dSFast,extraBounce: ebSFast)
    )
    
    
}
