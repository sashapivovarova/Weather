//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

protocol Vehicle {
    var name: String { get }
    var speed: Int { get }
}

struct ContentView: View {
    
    struct Car: Vehicle {
        let name: String
        let speed: Int
    }
    
    struct Train: Vehicle {
        let name: String
        let speed: Int
    }
    
    struct Airplane: Vehicle {
        let name: String
        let speed: Int
    }
    
    //    let car = Car(name: "Power", speed: 3)
    //    let train = Train(name: "PoPo", speed: 14)
    
    let vehicle: [Vehicle] = [Car(name: "Power", speed: 3), Train(name: "PoPo", speed: 14),Airplane(name: "Jet", speed: 800)]
    
    var body: some View {
        VStack{
            HStack{
                Text(vehicle[0].name)
                Text(vehicle[0].speed.description)
            }
            HStack{
                Text(vehicle[1].name)
                Text(vehicle[1].speed.description)
            }
            HStack{
                Text(vehicle[2].name)
                Text(vehicle[2].speed.description)
            }
        }
    }
}

#Preview {
    ContentView()
}
