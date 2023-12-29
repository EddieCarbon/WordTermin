//
//  SettingsView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var flag: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                SheetHeader(title: "Informacje")
                
                ZStack {
                    ScrollView {
                        VStack {
                            ExpandableView(thumbnail: ThumbnailView(content: {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Jak obserwować terminy egzaminów?")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundStyle(Color.theme.accent)
                                        .font(.headline)
                                        .fontWeight(.medium)
                                                                
                                }
                                .padding()
                            }), expanded: ExpandedView(content: {
                                
                                VStack {
                                    Text("Jak obserwować terminy egzaminów?")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundStyle(Color.theme.accent)
                                        .font(.headline)
                                        .fontWeight(.medium)
                                    
                                    
                                    Text("Aby rozpocząć obserwowanie terminów w danym ośrodku egzaminacyjnym, na stronie 'Lista Egzaminów' użyj przycisku + w prawym dolnym rogu. Następnie wybierz wszystkie opcje dotyczące Twojego egzaminu.")
                                        .font(.callout)
                                        .foregroundStyle(Color.theme.accent)
                                    
                                    Spacer()
                                }
                                .padding()
                                
                            }))
                            
                        }
                        .padding()
                        
                        DisclosureGroup(
                            isExpanded: $flag,
                            content: {
                                Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                    .font(.body)
                                    .fontWeight(.light)
                            },
                            label: {
                                Text("1. Can I reuse the source code?")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.black)
                            }
                        )
                        .padding()
         
                    }
                    .scrollIndicators(.hidden)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView()
}
