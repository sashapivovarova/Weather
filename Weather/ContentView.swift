//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    
    struct Pet {
        let name: String
        let ownerName: String
        let type: String
    }
    
    let myPet = Pet(name: "Cherry", ownerName: "Sasha", type: "Shiba")
    let myPet2 = Pet(name: "Happy", ownerName: "Sasha", type: "Jindo")
    
    var body: some View {
        VStack{
            Text(myPet.name)
            Text(myPet.ownerName)
            Text(myPet.type)
            Divider()
            Text(myPet2.name)
            Text(myPet2.ownerName)
            Text(myPet2.type)
        }
    }
}

#Preview {
    ContentView()
}
