//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    let friends = ["Sasha", "Min", "Olive", "Happy"]
    let ages = [10,20,30,40]
    
    var body: some View {
        List {
            Text(ages.reduce(0, { partialResult, next in
                partialResult + next
            }).description)
        }
    }
}

#Preview {
    ContentView()
}
