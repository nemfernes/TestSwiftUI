//
//  ListModifier.swift
//  TestAppSwiftUI
//
//  Created by MAC on 17.07.2023.
//

import Foundation
import SwiftUI

struct ListBackgroundModifier: ViewModifier {

    @ViewBuilder
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .scrollContentBackground(.hidden)
        } else {
            content
        }
    }
}
