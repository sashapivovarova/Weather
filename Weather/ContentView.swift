//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var id: String = ""
    @State var password: String = ""
    @State var checking: Bool = false
    @State var success: Bool = false
    @State var fail: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                idLabel()
                TextField("Enter ID", text: $id)
                    .textFieldStyle(.roundedBorder)
            }
            HStack{
                pwLabel()
                if checking {
                    TextField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                } else {
                    SecureField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                Button {
                    checking.toggle()
                }label: {
                    Image(systemName: "eye")
                }
            }
            Button {
                success = checkLoggedIn(id: id, pw: password)
            } label: {
                Text("Log in")
            }
            .fullScreenCover(isPresented: $success) {
                ZStack{
                    Color.orange.ignoresSafeArea()
                    VStack{
                        Text("Welcome, \(id)")
                        Button {
                            success = false
                            fail = true
                        }label: {
                            Text("Log out")
                        }
                    }
                }
            }
            .alert(isPresented: $fail) {
                Alert(title: Text("Password is wrong!"))
            }
            .padding()
        }
    }
    
    @ViewBuilder
    func idLabel() -> some View {
        Label {
            Text("ID : ")
        } icon: {
            Image(systemName: "person.fill")
        }
    }
    
    @ViewBuilder
    func pwLabel() -> some View {
        Label {
            Text("PW : ")
        } icon: {
            Image(systemName: "lock.fill")
        }
    }
    
    private func checkLoggedIn(id: String, pw: String) -> Bool {
        if id == "sasha" && pw == "1234" {
            return true
        } else {
            return false
        }
    }
}

#Preview {
    ContentView()
}
