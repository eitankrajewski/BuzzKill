//
//  RegistrationView.swift
//  BuzzKill App
//
//  Created by Orli Feigel on 12/30/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var username: String = ""
    @State var pass: String = ""
    @State var isOnLoginPage: Bool = false
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric (
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    var body: some View {
        switch onboardingState {
        case 0:
            welcomeView
                .transition(transition)
        case 1:
            registrationView
                .transition(transition)
        default:
            MainView()
                .transition(transition)
        }
    }
    
    private var registerButton: some View {
        Text("Register")
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height:55)
            .background(Color("SecondaryAccentColor").opacity(0.55))
            .padding(.horizontal, 20)
            .cornerRadius(15)
            .onTapGesture {
                withAnimation(.spring()) {
                    onboardingState += 1
                }
            }
    }

}


extension RegistrationView {
    private var registrationView: some View {
        NavigationStack {
            ZStack {
                
                Circle()
                    .fill(Color("AccentColor"))
                    .opacity(0.3)
                    .frame(width: 400, height: 350)
                    .position(x: UIScreen.main.bounds.width-200, y: 800)
                    .shadow(radius:10, y:-10)
                    .zIndex(1)
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
                        Spacer()
                        Text("Registration")
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
                        
                        registerButton
                        
                        Spacer()
                        Text("Already have an account? Sign in ")
                            .zIndex(1)
                        NavLink()
                    }
                }
                .padding(.top, 50)
                .background(Gradient(
                    colors: [Color("AccentColor").opacity(0.4),
                             Color("SecondaryAccentColor")]))
                
            }
        }
    }
        
        private var welcomeView: some View {
            ZStack {
                VStack {
                    Spacer()
                    Text("Welcome to BuzzKill.")
                        .font(.largeTitle)
                    
                    Spacer()
                    Spacer()
                    registerButton
                        .font(.title2)
                        .cornerRadius(100)
                    Spacer()
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 50)
            .background(Gradient(
                colors: [Color("AccentColor").opacity(0.4),
                         Color("SecondaryAccentColor")]))
        }
    }

extension RegistrationView {
        func NavLink() -> some View {
            
            Button(action: {
                isOnLoginPage.toggle()
                buttonIsPressed()
            }) {
                Text("here.")
                    .foregroundColor(.white)
                    .bold()
            }
            .sheet(isPresented: $isOnLoginPage) {
                LoginView()
                Text("X")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width:50, height:50)
            }
        }
        
        func buttonIsPressed() {
            switch onboardingState {
            case 1:
                guard username.count >= 3 else {
                    
                    return
                }
            default:
                break
            }
        }
    }
    
    #Preview {
        RegistrationView()
    }
