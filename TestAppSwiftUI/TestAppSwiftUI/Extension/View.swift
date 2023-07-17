//
//  View.swift
//  TestAppSwiftUI
//
//  Created by MAC on 14.07.2023.
//
import SwiftUI
import Foundation

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
