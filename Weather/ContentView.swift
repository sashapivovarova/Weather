//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var friends = ["Sasha Kim", "Min Lee", "Olive Sato", "Happy Park", "SashaKim"]
    
    var body: some View {
        VStack{
            List {
                ForEach(friends, id: \.self) { friend in
                    Text(friend)
                }
            }
            //            Button("Filter name") {
            //                friends = filterName(friends, filteredName: "Sasha Kim")
            //            }
            Button("Filter name") {
                friends = friends
                    .map({friend in
                        friend.replacingOccurrences(of: " ", with: "")})
                    .filter({friend in
                    friend == "SashaKim"
                })
            }
        }
    }
    
    func filterName(_ names: [String], filteredName: String) -> [String] {
        var tempList: [String] = []
        
        for item in names {
            if item == filteredName {
                tempList.append(item)
            }
        }
        return tempList
    }
}

#Preview {
    ContentView()
}
