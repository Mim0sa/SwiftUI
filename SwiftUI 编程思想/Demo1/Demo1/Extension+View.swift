//
//  Extension+View.swift
//  Demo1
//
//  Created by Mimosa on 2021/2/1.
//

import SwiftUI

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}
