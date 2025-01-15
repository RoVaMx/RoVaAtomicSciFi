//
//  SwiftUIView.swift
//  
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI
import RoVaLog

public protocol AtomView : View, RoVa_Log {
    var scheme : ColorScheme {get}
}

public extension AtomView {
    
}


