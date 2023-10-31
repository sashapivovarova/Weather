//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            Text("sasha")
                .onAppear {
                    trailingClosure(first: 3, second: 4) { a, b in
                        print("\(a)+\(b)")
                    }
                }
        }
    }
    
    func trailingClosure(first: Int, second: Int, action: (Int, Int)->()) {
        action(first, second)
    }
}

#Preview {
    ContentView()
}
