//
//  ContentView.swift
//  Weather app (iOS)
//
//  Created by Meet Balani on 09/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red , .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundStyle(.white)
                    .padding()
                VStack (spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180 )
                    Text("76° ")
                        .font(.system(size: 70, weight: .medium ))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40 )
                HStack(spacing: 24 ){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", tempreature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", tempreature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", tempreature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", tempreature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", tempreature: 25)
                    
                }
                Spacer()
                Button {
                    print("tapped ")
                } label: {
                    Text("Choose Day")
                        .frame(width: 280, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .bold, design: .default))
                        .cornerRadius(10)
                        
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempreature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium ))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40 )
            Text("\(tempreature)°")
                .font(.system(size: 28, weight: .medium ))
                .foregroundColor(.white)
        }
    }
}
