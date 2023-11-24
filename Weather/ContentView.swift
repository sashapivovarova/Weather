//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var topOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            
            GeometryReader { geometry in
                Image("Cloud")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text("Tokyo")
                        .font(.title)
                    Text("13")
                        .font(.system(size: 80, weight: .thin))
                    Text("Sunny")
                        .font(.title3)
                    HStack {
                        Text("Max: 18")
                            .font(.title3)
                        Text("Min: 13")
                            .font(.title3)
                    }
                }
                
                VStack(spacing: 0) {
                    Text("It will be sunny")
                        .frame(maxWidth: .infinity)
                        .background(.ultraThinMaterial)
                        .zIndex(1)
                    Divider()
                    
                    HStack {
                        VStack {
                            Text("Now")
                            Image(systemName: "cloud.fill")
                            Text("13")
                        }
                        VStack {
                            Text("10 AM")
                            Image(systemName: "cloud.fill")
                            Text("13")
                        }
                        VStack {
                            Text("11 AM")
                            Image(systemName: "cloud.fill")
                            Text("13")
                        }
                        VStack {
                            Text("12 PM")
                            Image(systemName: "cloud.fill")
                            Text("13")
                        }
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background(.ultraThinMaterial)
                    .offset(y: topOffset >= 200  ? 0 : topOffset - 200)
                    .zIndex(0)
                    .clipped()
                }
                .background(
                    GeometryReader(content: { geometry -> Color in
                        
                        let minY = geometry.frame(in: .global).minY
                        
                        DispatchQueue.main.async {
                            topOffset = minY
                        }
                        
                        return Color.clear
                    })
                )
                .padding()
                .cornerRadius(13)
                
                VStack {
                    HStack {
                        Image(systemName: "calendar")
                        Text("From 10 days")
                    }
                    
                    Divider()
                    
                    VStack {
                        HStack {
                            Text("Today")
                            Image(systemName: "cloud")
                            Text("11")
                            Text("18")
                        }
                        HStack {
                            Text("Friday")
                            Image(systemName: "cloud")
                            Text("11")
                            Text("18")
                        }
                        HStack {
                            Text("Saterday")
                            Image(systemName: "cloud")
                            Text("11")
                            Text("18")
                        }
                    }
                }
                .padding()
                .background(.red)
                .cornerRadius(13)
            }
        }
    }
}

#Preview {
    ContentView()
}
