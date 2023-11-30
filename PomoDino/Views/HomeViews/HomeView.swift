//
//  HomeView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack() {
        
                Image("backgroundImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                Image("dinosaurEgg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 260)
                    //.background(Color.red)
                    .offset(y: 150)
            }

        }
    }
}

#Preview {
    HomeView()
}
