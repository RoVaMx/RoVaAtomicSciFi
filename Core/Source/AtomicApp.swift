//
//  AtomicApp.swift
//
//
//  Created by Francisco Romero on 14/01/25.
//

import SwiftUI
import RoVaLog

public protocol AtomicApp : App , RoVa_Log {
    var scheme : ColorScheme {get}
}
