//
//  HomeView.swift
//  BuzzKill App
//
//  Created by Orli Feigel on 1/1/25.
//

import SwiftUI

struct HomeView: View {
    
    private let gradientColors = [Color("AccentColor").opacity(0.3), Color("SecondaryAccentColor").opacity(0.3)]
    private let username: String = "User"
    
    var body: some View {
        
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
//                            .fill(Material.ultraThinMaterial)
                            .foregroundColor(Color("AccentColor").opacity(0.35))
                            .frame(width: 300, height: 400)
                            .padding(.top, 20)
                            .shadow(radius: 10, y:10)
                        
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(LinearGradient (
                                colors: gradientColors,
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                            .frame(width: 300, height: 400)
                            .padding(.top, 20)
                        
                        VStack {
                            Image(systemName: "map.fill")
                                .foregroundColor(Color.black.opacity(0.5))
                                .font(.system(size: 200))
                            Image(systemName: "mappin")
                                .foregroundColor(Color.black.opacity(0.5))
                                .font(.system(size: 50))
                            Text("Map")
                                .font(.title)
                        }
                        }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
//                            .fill(Material.ultraThinMaterial)
                            .foregroundColor(Color("AccentColor").opacity(0.35))
                            .frame(width: 300, height: 400)
                            .padding(.top, 20)
                            .shadow(radius: 10, y:10)
                        
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(LinearGradient (
                                colors: gradientColors,
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                            .frame(width: 300, height: 400)
                            .padding(.top, 20)
                        
                        VStack {
                            Image(systemName: "camera.viewfinder")
                                .foregroundColor(Color.black.opacity(0.5))
                                .font(.system(size: 200))
                                .padding(.bottom, 50)
                            Text("Camera")
                                .font(.title)
                        }
                        }
                    
                        
                            
                    }
                    
                    HStack {
                        
                    }
                }
            .navigationTitle("Welcome, \(username)!")
            .navigationBarItems(trailing: settingsButton)
            .navigationBarItems(trailing: profileButton)
            .navigationBarItems(leading: helpButton)
            }
        }
    }

extension HomeView {
    
    private var settingsButton: some View {
        Button(action: {
            MainView()
        }) {
            Image(systemName: "gear.badge.questionmark")
                .font(.title2)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
    
    private var profileButton: some View {
        Button(action: {
            MainView()
        }) {
            Image(systemName: "person.crop.circle")
                .font(.title2)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
    
    private var helpButton: some View {
        Button(action: {
            MainView()
        }) {
            Image(systemName: "questionmark.bubble.fill")
                .font(.title2)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
    

}

#Preview {
    HomeView()
}
