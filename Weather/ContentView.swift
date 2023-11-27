//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    
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
                
                BlurStackView {
                    Text("It will be sunny")
                } contentView: {
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
                }
                
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("From 10 days")
                    }
                } contentView: {
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
            }
        }
    }
}

#Preview {
    ContentView()
}
