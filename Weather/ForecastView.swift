//
//  ForecastView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/11/29.
//

import SwiftUI

struct ForecastView: View {
    
    var time: String
    var imageName: String
    var celcius: CGFloat
    
    var body: some View {
        VStack {
            Text(time)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Image(systemName: imageName)
                .font(.title3)
                .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .symbolRenderingMode(.multicolor)
                .frame(height: 30)
                        
            Text("\(Int(celcius))🌡️")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ForecastView(time: "Now", imageName: "cloud.sun", celcius: 13)
}
