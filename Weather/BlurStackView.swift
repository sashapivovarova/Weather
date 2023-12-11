//
//  BlurStackView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/11/27.
//

import SwiftUI

struct BlurStackView<Header: View, Content: View>: View {
    
    var headerView: Header
    var contentView: Content
    var offsetLimit: CGFloat = 200
    
    @State var topOffset: CGFloat = 0
    @State var bottomOffset: CGFloat = 0
    
    init(@ViewBuilder headerView: @escaping () -> Header,
         @ViewBuilder contentView: @escaping () -> Content) {
        self.headerView = headerView()
        self.contentView = contentView()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            headerView
                .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                .padding()
                .background(.ultraThinMaterial, in: IndividualCorner(corners: bottomOffset < 35 ? .allCorners : [.topLeft, .topRight], radius: 14))
                .zIndex(1)
            
            Divider()
            
            contentView
                .frame(maxWidth: .infinity)
                .padding()
                .background(.ultraThinMaterial, in: IndividualCorner(corners: [.bottomLeft, .bottomRight], radius: 14))
                .offset(y: topOffset >= offsetLimit  ? 0 : topOffset - offsetLimit)
                .zIndex(0)
                .clipped()
        }
        .opacity(getOpacity())
        .offset(y: topOffset >= offsetLimit  ? 0 : -(topOffset - offsetLimit))
        .background(
            GeometryReader(content: { geometry -> Color in
                
                let minY = geometry.frame(in: .global).minY
                let maxY = geometry.frame(in: .global).maxY
                
                DispatchQueue.main.async {
                    topOffset = minY
                    bottomOffset = maxY - 220
                }
                
                return Color.clear
            })
        )
        .padding()
    }
    
    private func getOpacity() -> CGFloat {
        if bottomOffset < 35 {
            let progress = bottomOffset / 35
            return progress
        } else {
            return 1
        }
    }
}

#Preview {
    ContentView()
}
