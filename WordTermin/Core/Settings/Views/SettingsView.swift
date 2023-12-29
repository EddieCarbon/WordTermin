//
//  SettingsView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI


struct SettingsView: View {
    
    @Binding var isPresented: Bool
    let title: String = "Informacje"
    
    var body: some View {
        NavigationView {
            VStack {
                header
                
                ScrollView {
                    DisclosureGroup(
                        content: {
                            Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                .font(.body)
                                .fontWeight(.light)
                                .foregroundColor(Color.theme.accent)
                                
                        },
                        label: {
                            Text("Jak obserwować terminy egzaminów?")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding(.top)
                    .padding()
                    
                    DisclosureGroup(
                        content: {
                            Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                .font(.body)
                                .fontWeight(.light)
                                .foregroundColor(Color.theme.accent)
                                
                        },
                        label: {
                            Text("Dostałem powiadomienie. Co dalej?")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding()
                    
                    DisclosureGroup(
                        content: {
                            Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                .font(.body)
                                .fontWeight(.light)
                        },
                        label: {
                            Text("Termin zniknął, zanim zdążyłem się zapisać")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding()
                    
                    DisclosureGroup(
                        content: {
                            Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                .font(.body)
                                .fontWeight(.light)
                        },
                        label: {
                            Text("Powiadomienia nie przychodzą")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding()
                    
                    DisclosureGroup(
                        content: {
                            Text("Absolutely! You are allowed to reuse the source code in your own projects (personal/commercial). However, you're not allowed to distribute or sell the source code without prior authorization.")
                                .font(.body)
                                .fontWeight(.light)
                        },
                        label: {
                            Text("Wskazówki")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding()
                    
                    DisclosureGroup(
                        content: {
                            VStack {
                                Button(action: {
                                    
                                }, label: {
                                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                                })
                                
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "plus")
                                })
                            }
                        },
                        label: {
                            Text("Kontakt")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.theme.accent)
                        }
                    )
                    .padding()
                }
                
                
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView(isPresented: .constant(true))
}

extension SettingsView {
    
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
