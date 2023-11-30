//
//  startupView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct startupView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.0
    
    var body: some View {
        if isActive{
            loginView()
            .animation(nil, value: UUID())
        }
        
        else{
            // logo animation
            VStack{
                VStack{
                    Image("pomodinoLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(opacity)
                        .scaleEffect(size)
                }
                
                .onAppear{
                    withAnimation(.easeInOut(duration: 3.0)){
                        self.opacity = 1.0
                    }
                }
            }
            
            // go to next view after logo animation
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation(){
                        self.isActive = true
                    }
                }
            }
            
        }
        
    }
}

// to view just startupView
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        startupView()
    }
}

// to view startupView -> loginView()
/*
 #Preview {
 startupView()
 }
 */
