//
//  ReservationViewModel.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 02/01/2024.
//

import Foundation
import Combine

class ReservationViewModel: ObservableObject {
    
    @Published var headquaterSearchText = ""
    @Published var headquaterSelection: String?
    @Published var headquater = ""
    @Published var examType = ""
    @Published var dateFrom = Date()
    @Published var dateTo = Date()
    
    var examTypes = [
        "Teoretyczny",
        "Praktyczny"
    ]
    
    var options = [
        "Lambo",
        "Ferrari",
        "Aston Martin"
    ]
}
