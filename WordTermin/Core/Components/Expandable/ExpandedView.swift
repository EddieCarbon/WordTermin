//
//  ExpandedView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct ExpandedView: View {
    
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

