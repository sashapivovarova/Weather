//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var result: String = "...."
    
    var body: some View {
        VStack {
            Button {
                result = sumTwoNumber(4, 2)
                result = minusTwoNumber(4, 2)
                result = calculateTwoNumber(4, 2, calculate: {first, second in return first + second})
                result = calculateTwoNumber(4, 2, calculate: {first, second in return first - second})
                result = calculateTwoNumber(4, 2, calculate: {first, second in return first * second})
            }label: {
                Text("Calculate")
            }
            Text(result)
        }
    }
    
    func sumTwoNumber(_ first: Int, _ second: Int) -> String {
        return String(first + second)
    }
    
    func minusTwoNumber(_ first: Int, _ second: Int) -> String {
        return String(first - second)
    }
    
    func calculateTwoNumber(_ first: Int, _ second: Int, calculate: (Int, Int) -> Int) -> String {
        return String(calculate(first, second))
    }
}

#Preview {
    ContentView()
}
