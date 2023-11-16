//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var isLighting: Bool = false
    
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.fixed(100)),
                                GridItem(spacing: 30),
                                GridItem(alignment: .leading)]) {
                
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .frame(width: 100, height: 100)
                    .background(.purple)
            }
        }
    }
}

#Preview {
    ContentView()
}
