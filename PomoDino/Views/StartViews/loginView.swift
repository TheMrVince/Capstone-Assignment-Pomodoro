//
//  loginView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct loginView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var logoYOffset = 110.91671
    @State private var emailXField = -500.0
    @State private var emailYField = 500.0
    @State private var loginYField = 500.0
    @State private var titleTextOpacity = 0.0
    @State private var registerTextOpacity = 0.0
    

    
    var body: some View {
        NavigationView{
            
            VStack{
                
                // logo
                
                Image("pomodinoLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(size)
                    .offset(y: logoYOffset)
                    
                .background(
                    Image("pomodinoTitle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(size * 1.2)
                        .opacity(titleTextOpacity)
                        .offset(y: 50)
                )
                
                // email field
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 359, height: 58.91671)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(8.41667)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8.41667)
                                .inset(by: 0.53)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                        )
                        .offset(x: emailXField)
                    Text("Email")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 109.27525, alignment: .center)
                        .offset(x: emailXField)
                    
                }
                
                // password field
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 359, height: 58.91671)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(8.41667)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8.41667)
                                .inset(by: 0.53)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                        )
                        .offset(x: emailYField)
                    Text("Password")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 109.27525, alignment: .center)
                        .offset(x: emailYField)
                }
                
                NavigationLink(destination: tabView().navigationBarHidden(true)) {
                    // login button
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 359, height: 58.91671)
                            .background(Color(red: 0.325, green: 0.678, blue: 0.556))
                            .cornerRadius(8.41667)
                            .offset(y: loginYField)
                        
                        Text("Log in")
                            .font(
                                Font.custom("Arial Rounded MT Bold", size: 20)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 91, alignment: .top)
                            .offset(y: loginYField)
                    }
                }
               
                // register
                HStack {
                    Text("Don’t have an account?")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .offset(y: 80)
                        .opacity(registerTextOpacity)
                    
                    Text("Register Now")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .foregroundColor(Color(UIColor(red: 0.325, green: 0.678, blue: 0.556, alpha: 1))
)
                        .offset(y: 80)
                        .opacity(registerTextOpacity)
                }
                
            }
            
            .onAppear{
                withAnimation(.easeInOut(duration: 1.0)){
                    self.logoYOffset = -130.0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.easeInOut(duration: 2.0)) {
                        self.titleTextOpacity = 1.0
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(.easeInOut(duration: 2.0)) {
                        self.emailXField = 0.0
                        self.emailYField = 0.0
                        self.loginYField = 0.0
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation(.easeInOut(duration: 2.0)) {
                        self.registerTextOpacity = 1.0
                    }
                }
            }
            
                
                
                
        
            
            
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}

/*
 #Preview {
 loginView()
 }
 */
