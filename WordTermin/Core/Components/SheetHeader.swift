//
//  SheetHeader.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct SheetHeader: View {
    
    let title: String
    
    var body: some View {
        HStack {
            XMarkButton()
                .padding(.horizontal)
                    
            Spacer()
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)
            Spacer()
            
            XMarkButton()
                .padding(.horizontal)
                .opacity(0)
        }
        .padding(.vertical, 10)
        .padding(.top, 10)
        Divider()
    }
}

#Preview {
    SheetHeader(title: "Informacje")
}
