//
//  ContentView.swift
//  POMODINO
//
//  Created by Vince Hernandez on 11/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var xOffset: CGFloat = 0
    @State private var username = ""
    @State private var wrongUsername = ""
    @State private var password = ""
    @State private var wrongPassword = ""
    
    var body: some View{
        NavigationView{
            GeometryReader{ geo in
                ZStack{
                    Image("background1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    Image("background2")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                    Image("egg")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.75, alignment: .center)
                        .opacity(1.0)
                        .offset(x: 0, y: -90)
                    Image("outline")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.75, alignment: .center)
                        .opacity(1.0)
                        .offset(x: 0, y: -90)
                    Image("backdrop")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.75, alignment: .center)
                        .opacity(1.0)
                        .offset(x: 0, y: -90)
                    Image("title")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.75, alignment: .center)
                        .opacity(1.0)
                        .offset(x: 0, y: -90)
                    
                    // log in button
                    Button {
                        withAnimation {
                            xOffset -= 400
                        }
                    } label: {
                        ZStack {
                            Image("loginButton")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: 100, height: 100, alignment: .center)
                                .opacity(1.0)

                            TextField("Username", text: $username)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.white.opacity(1))
                                .cornerRadius(10)
                                .offset(x: 400, y: 25)
                            
                        }
                    }
                    
                    .offset(x: xOffset)
                    .padding(.top, 100)
                    
                    // sign up button
                    Button {
                        withAnimation {
                            xOffset += 400
                        }
                    } label: {
                        ZStack{
                            Image("signupButton")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: 100, height: 100, alignment: .center)
                                .opacity(1.0)
                            
                            SecureField("Password", text: $password)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color.white.opacity(1))
                                .cornerRadius(10)
                                .offset(x: 400, y: -25)
                        }
                    }
                    
                    .offset(x: xOffset)
                    .padding(.top, 350)
                    
                    Button {
                        print("bruh")
                    } label: {
                        ZStack{
                            NavigationLink(destination: HomeView()) {
                                ZStack {
                                    Image("loginButton")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .opacity(1.0)
                                }
                            }
                        }
                    }
                    .offset(x: 400, y: 50)
                    .offset(x: xOffset)
                    .padding(.top, 350)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
