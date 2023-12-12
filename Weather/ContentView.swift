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
            BackgroundView()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    if offset > 50 {
                        VStack {
                            Text("Tokyo")
                                .font(.title)
                            Text("13")
                                .font(.system(size: 80, weight: .thin))
                                .opacity(setOpacity())
                            Text("Sunny")
                                .font(.title3)
                                .opacity(setOpacity())
                        }
                        HStack {
                            Text("Max: 18")
                                .font(.title3)
                            Text("Min: 13")
                                .font(.title3)
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
                            ForecastView(time: "13", imageName: "cloud", celcius: 12)
                            ForecastView(time: "14", imageName: "cloud", celcius: 12)
                            ForecastView(time: "15", imageName: "cloud", celcius: 12)
                        }
                    }
                }
                
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10 days")
                    }
                } contentView: {
                    VStack {
                        ForEach(forecast) { dayForecast in
                            VStack {
                                HStack {
                                    Text(dayForecast.day)
                                    Image(systemName: dayForecast.imageName)
                                        .symbolRenderingMode(.multicolor)
                                    Text("\(dayForecast.lowTemperature.description)")
                                    ZStack {
                                        Capsule()
                                            .fill(.linearGradient(Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing))
                                        GeometryReader { proxy in
                                            Capsule()
                                                .foregroundColor(.white)
                                                .frame(width:dayForecast.arrange)
                                                .offset(x:10)
                                        }
                                    }
                                    Text("\(dayForecast.highTemperature.description)")
                                }
                            }
                        }
                    }
                }
                
                HStack {
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Feels like")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("It feels like cold with wind")
                        }
                    }
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Humidity")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("The iced temperatur is 2")
                        }
                    }
                }
                HStack {
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Feels like")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("It feels like cold with wind")
                        }
                    }
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Humidity")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("The iced temperatur is 2")
                        }
                    }
                }
                HStack {
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Feels like")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("It feels like cold with wind")
                        }
                    }
                    BlurStackView {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Humidity")
                        }
                    } contentView: {
                        VStack(alignment: .leading) {
                            TitleLabel(titleText: "10%")
                            Spacer()
                            Text("The iced temperatur is 2")
                        }
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func BackgroundView() -> some View {
        GeometryReader { geometry in
            Image("Cloud")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .ignoresSafeArea()
    }
    
    private func setOpacity() -> CGFloat {
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
