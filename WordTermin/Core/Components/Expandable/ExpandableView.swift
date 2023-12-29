//
//  ExpandableView.swift
//  WordTermin
//
//  Created by Jakub Tomiczek on 29/12/2023.
//

import SwiftUI

struct ExpandableView: View {
    
    @Namespace private var namespace
    @State private var show = false
    
    var thumbnail: ThumbnailView
    var expanded: ExpandedView
    
    var body: some View {
        ZStack {
            if !show {
                thumbnailView()
            } else {
                expandedView()
            }
        }
        .onTapGesture {
            if !show {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            }
        }
    }
    
    @ViewBuilder
    private func thumbnailView() -> some View {
        ZStack {
            thumbnail
                .matchedGeometryEffect(id: "view", in: namespace)
        }
        .background(
            Color.gray.opacity(0.6)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        }
    }
    
    @ViewBuilder
    private func expandedView() -> some View {
        ZStack {
            expanded
                .matchedGeometryEffect(id: "view", in: namespace)
                .background(
                    Color.gray.opacity(0.5)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                }
        }
        .onTapGesture {
            if show {
                withAnimation(.spring(response: 1, dampingFraction: 0.8)) {
                    show.toggle()
                }
            }
        }
    }
}
