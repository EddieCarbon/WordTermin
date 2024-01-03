//
//  ReservationView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct ReservationView: View {
    
    @StateObject var vm: ReservationViewModel
    @State private var isExpanded = false
    @Environment(\.colorScheme) var scheme

    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            if isExpanded {
                ZStack {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            self.hideKeyboard()
                            withAnimation(.snappy) {
                                isExpanded = false
                            }
                        }
                    
                    searchList
                }
                .zIndex(2.0)
            }
            
            VStack {
                headquaterPicker
                headquaterPicker
                examTypeForm
                dateForm
                Spacer()
 
            }
            .navigationTitle("Dodaj Rezerwacje")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ReservationView(vm: ReservationViewModel())
}

extension ReservationView {
    
    private var headquaterPicker: some View {
        VStack(alignment: .leading) {
            Text("Ośrodek egzaminacyjny")
                .font(.callout)
                .foregroundStyle(Color.theme.secondaryText)
            
            VStack {
                HStack{
                    Text(vm.headquaterSelection ?? "Wybierz")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
//                        .rotationEffect(.degrees(isExpanded ? -180 : 0))
                }
                .frame(height: 40)
                .padding(.horizontal)
                
            }
            .background(Color.theme.background)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                withAnimation(.snappy) {
                    isExpanded.toggle()
                }
            }
            .shadow(color: .primary.opacity(0.2), radius: 4)
        }
        .padding(.top)
        .padding(.horizontal)
    }
    
    private var searchList: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Wybierz ośrodek egzaminacyjny")
                    .font(.title)
                    .fontWeight(.medium)
            }
            .padding()
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.callout)
                    .foregroundStyle(Color.theme.accent)
                
                TextField("", text: $vm.headquaterSearchText, prompt: Text(""))
                    .disableAutocorrection(true)
                    
            }
            .padding(.vertical, 2)
            .padding(.horizontal)
            
            Divider()
                .padding(.horizontal)

            
            ScrollView(showsIndicators: false) {
                ForEach(vm.options, id: \.self) { option in
                    
                    HStack {
                        Text(option)
                            .foregroundStyle(vm.headquaterSelection == option ? 
                                             Color.theme.accent : Color.theme.secondaryText)
                            .padding()
                        
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation(.snappy) {
                            self.hideKeyboard()
                            vm.headquaterSelection = option
                            isExpanded.toggle()
                        }
                    }
                }
            }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.theme.background)
        )
        .padding(.vertical, 40)
        .padding(.horizontal, 30)
        .zIndex(2.0)
    }
    
    private var examTypeForm: some View {
        VStack(alignment: .leading) {
            Text("Rodzaj egzaminu")
                .font(.callout)
                .foregroundStyle(Color.theme.secondaryText)
            
            Picker("", selection: $vm.examType) {
                ForEach(vm.examTypes, id: \.self) {
                        Text($0)
                }
            }
            .pickerStyle(.segmented)

        }
        .padding(.vertical, 25)
        .padding(.horizontal, 20)
    }
    
    private var dateForm: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Data od:")
                    .font(.callout)
                    .foregroundStyle(Color.theme.secondaryText)
                
                DatePicker(
                    "",
                    selection: $vm.dateFrom,
                    in: Date()...,
                    displayedComponents: .date
                )
                
            }
            .frame(width: 110)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Do:")
                    .font(.callout)
                    .foregroundStyle(Color.theme.secondaryText)
                
                DatePicker(
                    "",
                    selection: $vm.dateTo,
                    in: vm.dateFrom...,
                    displayedComponents: .date
                )
            }
            .frame(width: 120)
        }
        .padding(.horizontal, 25)
    }
    
}
