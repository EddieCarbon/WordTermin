//
//  ReservationView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct ReservationView: View {
    
    @Binding var isPresented: Bool
    let title: String = "Dodaj Rezerwacje"
    
    var body: some View {
        NavigationView {
            
            header
            
        }
    }
}

#Preview {
    ReservationView(isPresented: .constant(true))
}

extension ReservationView {
    
    private var header: some View {
        HStack {
            XMarkButton(isPresented: $isPresented)
                .padding(.horizontal)
            
            Spacer()
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center)
            Spacer()
            
            XMarkButton(isPresented: $isPresented)
                .padding(.horizontal)
                .opacity(0)
        }
        .padding(.vertical, 10)
        .padding(.top, 10)
    }
}
