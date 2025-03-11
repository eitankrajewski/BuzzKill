//
//  MainView.swift
//  BuzzKill App
//
//  Created by Orli Feigel on 12/30/24.
//

import SwiftUI

struct MainView: View {
    

    
    var body: some View {
//        RegistrationView()
        VStack {
            Text("Hello")
        }
        .edgesIgnoringSafeArea(.all)
        .background(Gradient(
            colors: [Color("AccentColor").opacity(0.4),
                         Color("SecondaryAccentColor")]))

    }
    
    
}

#Preview {
    MainView()
}
