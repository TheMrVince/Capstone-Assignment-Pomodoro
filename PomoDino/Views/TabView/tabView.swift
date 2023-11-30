//
//  tabView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        ZStack{
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ShopView()
                    .tabItem {
                        Image(systemName: "dollarsign")
                        Text("Shop")
                    }
                TaskView()
                    .tabItem {
                        Image(systemName: "checkmark.square")
                        Text("Tasks")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
            }
            .accentColor(.red)
            
            
            
        }
        
        
    }
    
    
}

#Preview {
    tabView()
}
