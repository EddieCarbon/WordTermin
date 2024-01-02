//
//  DropDownSearchablePicker.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 02/01/2024.
//

import SwiftUI

struct DropDownSearchablePicker: View {
    let title: String
    let prompt: String
    let options: [String]
    
    @State private var isExpanded = false
    
    @Binding var selection: String?
    @Binding var searchedText: String
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack {
            picker
        
            if isExpanded {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isExpanded.toggle()
                    }
                
                searchList
            }
            
        }
    }
}

#Preview {
    DropDownSearchablePicker(title: "Ośrodek egzaminacyjny", prompt: "Select", options: [
        "Lambo",
        "Ferrari",
        "Aston Martin"
    ], selection: .constant("Lambo"), searchedText: .constant(""))
}

extension DropDownSearchablePicker {
    
    private var picker: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.footnote)
                .foregroundStyle(.gray)
                .opacity(0.8)
            
            VStack {
                HStack{
                    Text(selection ?? prompt)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .rotationEffect(.degrees(isExpanded ? -180 : 0))
                }
                .frame(height: 40)
                .padding(.horizontal)
                
            }
            .background(scheme == .dark ? .black : .white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                withAnimation(.snappy) {
                    isExpanded.toggle()
                }
            }
            .shadow(color: .primary.opacity(0.2), radius: 4)
        }
        .padding()
    }
    
    private var searchList: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Wybierz " + title.lowercased())
                    .font(.title)
                    .fontWeight(.medium)
            }
            .padding()
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.caption)
                    
                    TextField(text: $searchedText, prompt: Text("")) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(Color.gray)
                    }
                }
                Divider()
                
            }
            .padding(.horizontal, 15)
            
            ScrollView {
                ForEach(options, id: \.self) { option in
                    HStack {
                        Text(option)
                            .foregroundStyle(selection == option ? Color.primary : .gray)
                        
                        Spacer()
                        
                        if selection == option {
                            Image(systemName: "checkmark")
                                .font(.subheadline)
                        }
                    }
                    .frame(height: 40)
                    .padding(.horizontal)
                    .onTapGesture {
                        withAnimation(.snappy) {
                            selection = option
                            isExpanded.toggle()
                        }
                    }
                }
            }
        }
        .frame(maxWidth:300, maxHeight: 500)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.theme.background)
        )
        .zIndex(2.0)
    }
}
