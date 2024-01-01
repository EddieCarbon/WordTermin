//
//  ReservationView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct ReservationView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                }
            }
            .navigationTitle("Dodaj Rezerwacje")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ReservationView()
}

extension ReservationView {
    
//    private var header: some View {
//        HStack {
//            XMarkButton(isPresented: $isPresented)
//                .padding(.horizontal)
//            
//            Spacer()
//            Text(title)
//                .font(.headline)
//                .multilineTextAlignment(.center)
//            Spacer()
//            
//            XMarkButton(isPresented: $isPresented)
//                .padding(.horizontal)
//                .opacity(0)
//        }
//        .padding(.vertical, 10)
//        .padding(.top, 10)
//    }
}
