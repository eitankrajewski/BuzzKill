//
//  LoginView.swift
//  BuzzKill App
//
//  Created by Orli Feigel on 12/31/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var pass: String = ""
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                    
                    Circle()
                        .fill(Color("AccentColor"))
                        .opacity(0.6)
                        .frame(width: 400, height: 400)
                        .position(x: UIScreen.main.bounds.width-200, y: 800)
                        .shadow(radius:10, y:-10)
                    VStack {
                        VStack {
                            Text("BuzzKill")
                                .font(.largeTitle)
                                .bold()
                            
                            Text("Safety, one bug at a time.")
                        }
                        .frame(width: 250)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .background(Color("AccentColor").opacity(0.3))
                        .cornerRadius(10)
                        .shadow(color: Color("SecondaryAccentColor"), radius: 20, x:0, y:20)
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Text("Login")
                                .font(.title)
                                .bold()
                            
                            Form {
                                Section{
                                    TextField("Username", text: $username)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .padding()
                                        .opacity(0.9)
                                    SecureField("Password", text: $pass)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .padding()
                                        .opacity(0.9)
                                    
                                }
                                .listRowBackground(Color.clear)
                            }
                            .background(Color.clear)
                            .scrollContentBackground(.hidden)
                            .frame(height:225, alignment: .center)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 20)
                            .background(Color("AccentColor").opacity(0.3))
                            .cornerRadius(25)
                            .shadow(
                                radius: 10,
                                x: 0,
                                y: 10)
                            
                        }
                        
                        Spacer()
                        
                        
                }
            }
                    .padding(.top, 50)
                    .background(Gradient(
                        colors: [Color("AccentColor").opacity(0.4),
                                 Color("SecondaryAccentColor")]))
//                    .animation(.spring, value: isOnLoginPage)
            }
        }
    }

#Preview {
    LoginView()
}
