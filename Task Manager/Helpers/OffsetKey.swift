//
//  OffsetKey.swift
//  Task Manager
//
//  Created by Prystupa Taras on 06.09.2024.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
