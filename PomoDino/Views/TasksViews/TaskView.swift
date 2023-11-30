//
//  TaskView.swift
//  PomoDino
//
//  Created by Vince Hernandez on 11/28/23.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        ZStack() {
          Group {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 375, height: 307)
              .background(Color(red: 0.96, green: 0.76, blue: 0.50).opacity(0.67))
              .offset(x: 0, y: -252.50)
            ZStack() {
              ZStack() { }
              .frame(width: 219, height: 30)
              .offset(x: 0, y: -9)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 17, height: 10.67)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/17x11"))
                  )
                  .offset(x: -24.83, y: 0)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 15.27, height: 10.97)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/15x11"))
                  )
                  .offset(x: -3.67, y: -0.19)
                ZStack() { }
                .frame(width: 24.33, height: 11.33)
                .offset(x: 21.17, y: 0)
              }
              .frame(width: 66.66, height: 11.34)
              .offset(x: 139.50, y: 1)
              HStack(spacing: 0) {

              }
              .padding(
                EdgeInsets(top: 5.17, leading: 12.45, bottom: 4.74, trailing: 13.12)
              )
              .frame(width: 54, height: 21)
              .cornerRadius(32)
              .offset(x: -139.50, y: 0.50)
            }
            .frame(width: 375, height: 44)
            .offset(x: 0, y: -384)
            ZStack() {
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 90, height: 90)
                  .overlay(
                    Ellipse()
                      .inset(by: -1.50)
                      .stroke(Color(red: 0.85, green: 0.38, blue: 0.36), lineWidth: 1.50)
                  )
                  .offset(x: 0, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 80, height: 80)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/80x80"))
                  )
                  .offset(x: 0, y: 0)
              }
              .frame(width: 90, height: 90)
              .offset(x: 0.50, y: -36.50)
              Text("bruh")
                .font(Font.custom("Poppins", size: 14).weight(.medium))
                .tracking(0.70)
                .lineSpacing(16.20)
                .foregroundColor(.black)
                .offset(x: 0, y: 28.50)
              Text("@monicagamage")
                .font(Font.custom("Poppins", size: 10).weight(.medium))
                .tracking(0.50)
                .lineSpacing(11.57)
                .foregroundColor(Color(red: 0.85, green: 0.38, blue: 0.36))
                .offset(x: 0, y: 41.50)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 89, height: 22)
                  .background(Color(red: 0.96, green: 0.76, blue: 0.50))
                  .cornerRadius(50)
                  .offset(x: 0, y: 0)
                Text("Log Out")
                  .font(Font.custom("Poppins", size: 10))
                  .tracking(0.65)
                  .lineSpacing(11.57)
                  .foregroundColor(.black)
                  .offset(x: 0.50, y: 0)
              }
              .frame(width: 89, height: 22)
              .offset(x: 0, y: 70.50)
            }
            .frame(width: 127, height: 163)
            .offset(x: 0, y: -224.50)
            Text("Good Afternoon")
              .font(Font.custom("Poppins", size: 12).weight(.semibold))
              .tracking(0.72)
              .lineSpacing(13.88)
              .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
              .offset(x: 0.50, y: 84)
            Text("Tasks List")
              .font(Font.custom("Poppins", size: 18).weight(.semibold))
              .tracking(1.08)
              .lineSpacing(20.82)
              .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
              .offset(x: -119, y: 116.50)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 323, height: 248)
              .background(.white)
              .cornerRadius(24)
              .offset(x: 0, y: 271)
              .shadow(
                color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 15, y: 4
              )
            Text("Tasks List")
              .font(Font.custom("Poppins", size: 14))
              .tracking(0.84)
              .lineSpacing(16.20)
              .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
              .offset(x: -106, y: 181)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 17, height: 17)
                .background(Color(red: 0.96, green: 0.76, blue: 0.50).opacity(0.67))
                .cornerRadius(50)
                .offset(x: -112, y: 0)
              Text("Cook Rice and Chicken at 10 am")
                .font(Font.custom("Poppins", size: 12))
                .tracking(0.72)
                .lineSpacing(13.88)
                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
                .offset(x: 14, y: -1.50)
            }
            .offset(x: -22, y: 226.50)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 17, height: 17)
                .background(.white)
                .overlay(
                  Rectangle()
                    .inset(by: 0.50)
                    .stroke(Color(red: 0.06, green: 0.31, blue: 0.32), lineWidth: 0.50)
                )
                .offset(x: -80, y: 0)
              Text("Learn Reactjs at 12 pm")
                .font(Font.custom("Poppins", size: 12))
                .tracking(0.72)
                .lineSpacing(13.88)
                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
                .offset(x: 14, y: -1.50)
            }
            .offset(x: -54, y: 261.50)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 17, height: 17)
                .background(.white)
                .overlay(
                  Rectangle()
                    .inset(by: 0.50)
                    .stroke(Color(red: 0.06, green: 0.31, blue: 0.32), lineWidth: 0.50)
                )
                .offset(x: -74, y: 0)
              Text("Have Launch  at 1pm")
                .font(Font.custom("Poppins", size: 12))
                .tracking(0.72)
                .lineSpacing(13.88)
                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
                .offset(x: 14, y: -1.50)
            }
            .offset(x: -60, y: 296.50)
          };Group {
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 17, height: 17)
                .background(.white)
                .overlay(
                  Rectangle()
                    .inset(by: 0.50)
                    .stroke(Color(red: 0.06, green: 0.31, blue: 0.32), lineWidth: 0.50)
                )
                .offset(x: -97.50, y: 0)
              Text("Learn HTML and CSS at 3pm")
                .font(Font.custom("Poppins", size: 12))
                .tracking(0.72)
                .lineSpacing(13.88)
                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
                .offset(x: 14, y: -1.50)
            }
            .offset(x: -36.50, y: 331.50)
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 17, height: 17)
                .background(.white)
                .overlay(
                  Rectangle()
                    .inset(by: 0.50)
                    .stroke(Color(red: 0.06, green: 0.31, blue: 0.32), lineWidth: 0.50)
                )
                .offset(x: -71.50, y: 0)
              Text("Have Dinner at 8pm")
                .font(Font.custom("Poppins", size: 12))
                .tracking(0.72)
                .lineSpacing(13.88)
                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.75))
                .offset(x: 14, y: -1.50)
            }
            .offset(x: -62.50, y: 366.50)
            ZStack() {

            }
            .frame(width: 24, height: 24)
            .offset(x: 123.50, y: 181)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 3, height: 90)
              .background(Color(red: 0.85, green: 0.85, blue: 0.85))
              .cornerRadius(100)
              .offset(x: 124, y: 292)
          }
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(40)
    }
}

#Preview {
    TaskView()
}
