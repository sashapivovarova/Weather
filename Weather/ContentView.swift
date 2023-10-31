//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var friends = ["Sasha Kim", "Min Lee", "Olive Sato", "Happy Park"]
    
    var body: some View {
        VStack{
            List {
                ForEach(friends, id: \.self) { friend in
                    Text(friend)
                }
            }
            //            Button("Remove space") {
            //                friends = removeSpace(friends)
            //            }
            Button("Remove space") {
                friends = friends.map({friend in
                    friend.replacingOccurrences(of: " ", with: "")
                })
            }
        }
    }
    
    func removeSpace(_ names: [String]) -> [String] {
        var tempNames:[String] = []
        
        for item in names {
            tempNames.append(item.replacingOccurrences(of: " ", with: ""))
        }
        
        return tempNames
    }
}

#Preview {
    ContentView()
}
