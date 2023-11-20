//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var width: CGFloat = 200
    @State var height: CGFloat = 200
    @State var color: Color = .peach
    
    var body: some View {
        ZStack {
            //            Circle()
            //                .foregroundColor(.peach)
            //                .frame(width: 300, height: 300)
            //            Circle()
            //                .foregroundColor(.yellow)
            //                .frame(width: 200, height: 200)
            //            Circle()
            //                .foregroundColor(.blue)
            //                .frame(width: 100, height: 100)
            
            Circle()
                .foregroundColor(.peach)
                .frame(width: 300, height: 300)
                .overlay {
                    targetView(width: 200, height: 200, color: .yellow)
                        .overlay {
                            targetView(width: 100, height: 100, color: .blue)
                        }
                }
        }
    }
    
    @ViewBuilder
    func targetView(width: CGFloat, height: CGFloat, color: Color) -> some View {
        Circle()
            .foregroundColor(color)
            .frame(width: width, height: height)
    }
}

#Preview {
    ContentView()
}
