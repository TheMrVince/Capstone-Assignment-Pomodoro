//
//  SettingsView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isSound = true
    @State private var isNotifications = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Settings")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                        )
                    Toggle("Sound", isOn: $isSound)
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 310, alignment: .center)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                        )
                    Toggle("Notifications", isOn: $isNotifications)
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 310, alignment: .center)
                }
                
                Spacer()
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 358, height: 58)
                      .background(Color(red: 1, green: 0.76, blue: 0))
                      .cornerRadius(8.42)
                    Text("Sign Out")
                        .font(
                            Font.custom("Arial Rounded MT Bold", size: 20)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 91, alignment: .top)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
