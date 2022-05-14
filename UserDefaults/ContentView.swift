//
//  ContentView.swift
//  UserDefaults
//
//  Created by Sherzod Fayziev on 2022/05/14.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        print(Default.loadUser()as Any)
        let user = User(firstname: "Sherzod", lastname: "Fayziyev", email: "fayziyev658@gmail.com", phone: "01042492027", address: "adress")
        Default.storeUser(user: user)
        print(Default.loadUser()as Any)
    }
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
