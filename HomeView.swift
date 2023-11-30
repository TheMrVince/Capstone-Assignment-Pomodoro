//
//  HomeView.swift
//  POMODINO
//
//  Created by Vince Hernandez on 11/16/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            GeometryReader{ geo in
                ZStack{
                    Image("background1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .opacity(1.0)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
   
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
