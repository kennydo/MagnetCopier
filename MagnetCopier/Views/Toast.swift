//
//  Toast.swift
//  MagnetCopier
//
//  Created by Kenny Do on 6/29/24.
//

import SwiftUI

public struct Toast: View, Equatable {
    let title: String

    init(title: String) {
        self.title = title
    }

    public var body: some View {
        Group {
            HStack(spacing: 16) {
                Image(systemName: "checkmark").foregroundColor(.green)

                Text(title)
                    .font(.body)
            }
        }
        .padding()
        .background(.thickMaterial)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.gray.opacity(0.2), lineWidth: 1))
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 6)
    }
}

public struct ToastModifier: ViewModifier {
    @Binding var showToast: Bool

    let dismissAfter: DispatchTimeInterval

    var toastFunc: () -> Toast

    @ViewBuilder
    public func body(content: Content) -> some View {
        content.overlay(
            VStack {
                toastFunc()
                    .padding(.top)
                    .transition(.move(edge: .top).combined(with: .opacity))
                Spacer()
            }
            .animation(.easeInOut, value: showToast)
        )
    }
}

public extension View {
    func toast(showToast: Binding<Bool>, dismissAfter: DispatchTimeInterval, toastFunc: @escaping () -> Toast) -> some View {
        modifier(ToastModifier(showToast: showToast, dismissAfter: dismissAfter, toastFunc: toastFunc))
    }
}

#Preview {
    Toast(title: "Copied!")
}
