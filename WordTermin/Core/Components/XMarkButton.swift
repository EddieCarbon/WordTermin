//
//  XMarkButton.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            isPresented = false
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
                .fontWeight(.medium)
        })
    }
}

#Preview {
    XMarkButton(isPresented: .constant(true))
}
