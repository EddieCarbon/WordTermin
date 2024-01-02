//
//  HomeView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showSettingsView: Bool = false
    @State private var showReservationView: Bool = false
    
    let reservationList: [Reservation] = [
//        Reservation(headquarter: 1, category: "B", examType: "theoryExams", dateFrom: "", dateTo: <#T##Date#>),
//        
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                
                VStack {
                    header
                    
                    if reservationList.isEmpty {
                        emptyListText
                    } else {
                        ScrollView {
                            ForEach(reservationList.indices) { item in
                                NavigationLink {
                                    ReservationView(vm: ReservationViewModel())
                                } label: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(height: 170)
                                        .foregroundStyle(Color.theme.accent)
                                        .padding()
                                }
                            }
                        }
                    }
                }
                .sheet(isPresented: $showSettingsView, content: {
                    SettingsView(isPresented: $showSettingsView)
                })
            }
        }
    }
}


#Preview {
    HomeView()
}

extension HomeView {
    
    private var header: some View {
        HStack {
            Button(action: {
                showSettingsView.toggle()
            }, label: {
                CircleButtonView(iconName: "questionmark")
            })
            
            Spacer()
            
            Text("Lista obserwacji")
                .font(.headline)
            
            Spacer()

            NavigationLink {
                ReservationView(vm: ReservationViewModel())
            } label: {
                CircleButtonView(iconName: "plus")
            }         
        }
        .padding(.horizontal)
    }
    
    private var emptyListText: some View {
        VStack {
            Spacer()
            Image(systemName: "bookmark.slash")
                .resizable()
                .frame(width: 90, height: 80)
                .foregroundStyle(Color.theme.accent)
                .padding(.vertical)
            
            Text("Brak obserwowanych terminów")
                .font(.title3)
                .foregroundColor(Color.theme.accent)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)

            
            Text("Obecnie nie obserwujesz żadnych ośrodków. Kliknij przycisk +, by dodać obserwację.")
                .font(.callout)
                .foregroundColor(Color.theme.accent)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 35)
                .padding(.vertical, 2)
            
            Spacer()
            Spacer()
        }
    }
}

