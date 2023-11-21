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
            Image("Cloud")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
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
                
                VStack {
                    Text("It will be sunny")
                    
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
                    
                }
                .padding()
                .background(.red)
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
