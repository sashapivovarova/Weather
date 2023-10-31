//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    let friends = ["Sasha", "Min", "Olive", "Happy"]
    
    var body: some View {
        List {
            ForEach(friends.map({item in item + "- Kor"}), id: \.self) { friend in
                Text(friend)
            }
        }
    }
}

#Preview {
    ContentView()
}
