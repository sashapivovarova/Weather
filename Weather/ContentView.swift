//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    let friends = ["Sasha", "Min", "Olive", "Happy"]
    let ages = [11,22,33,44]
    
    var body: some View {
        List {
            ForEach(ages.map({item in String(item)}), id: \.self) { friend in
                Text(friend)
            }
        }
    }
}

#Preview {
    ContentView()
}
