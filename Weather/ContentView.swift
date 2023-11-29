//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var offset: CGFloat = 0
    
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
                    if offset > 50 {
                        VStack {
                            Text("Tokyo")
                                .font(.title)
                            HStack {
                                Text("13")
                                    .font(.system(size: 80, weight: .thin))
                                    .opacity(setOpacity())
                                Text("Sunny")
                                    .font(.title3)
                                    .opacity(setOpacity())
                            }
                        }
                    } else {
                        VStack {
                            Text("Tokyo")
                                .font(.title)
                            HStack {
                                Text("13")
                                    .font(.title3)
                                Text("Sunny")
                                    .font(.title3)
                            }
                        }
                    }
                    HStack {
                        Text("Max: 18")
                            .font(.title3)
                        Text("Min: 13")
                            .font(.title3)
                    }
                }
                .offset(y: -offset + 70)
                .background(
                    GeometryReader(content: { geometry -> Color in
                        
                        let minY = geometry.frame(in: .global).minY
                        
                        DispatchQueue.main.async {
                            offset = minY
                        }
                        
                        return Color.clear
                    })
                )
                
                BlurStackView {
                    Text("It will be sunny")
                } contentView: {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                            ForecastView(time: "Now", imageName: "cloud.sun", celcius: 13)
                            ForecastView(time: "11", imageName: "cloud", celcius: 12)
                            ForecastView(time: "12", imageName: "cloud", celcius: 12)
                        }
                    }
                    //                    HStack {
                    //                        VStack {
                    //                            Text("Now")
                    //                            Image(systemName: "cloud.fill")
                    //                            Text("13")
                    //                        }
                    //                        VStack {
                    //                            Text("10 AM")
                    //                            Image(systemName: "cloud.fill")
                    //                            Text("13")
                    //                        }
                    //                        VStack {
                    //                            Text("11 AM")
                    //                            Image(systemName: "cloud.fill")
                    //                            Text("13")
                    //                        }
                    //                        VStack {
                    //                            Text("12 PM")
                    //                            Image(systemName: "cloud.fill")
                    //                            Text("13")
                    //                        }
                    //                    }
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
    
    func setOpacity() -> CGFloat {
        if offset < 70 {
            return offset / 70
        } else {
            return 1
        }
    }
}

#Preview {
    ContentView()
}
