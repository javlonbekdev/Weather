//
//  ContentView.swift
//  Weather
//
//  Created by Javlonbek on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    let color: Color = .white
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        ZStack {
            LinearGradient(colors: [viewModel.day ? .blue : .black.opacity(0.8), viewModel.day ? .blue.opacity(0.2) : .gray],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                VStack {
                    Text("Mirzo Ulugbek")
                        .foregroundColor(color)
                        .font(.system(size: 40))
                        .bold()
                    Image(systemName: viewModel.day ? "cloud.sun.fill" : "cloud.moon.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(color)
                    Text("76")
                        .foregroundColor(color)
                        .font(.system(size: 50))
                        .bold()
                }
                HStack(spacing: 15) {
                    ForEach(viewModel.columns, id: \.self) { item in
                        VStack {
                            Text(item.day)
                                .foregroundColor(color)
                                .font(.system(size: 25))
                                .bold()
                            Image(systemName: item.icon)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundColor(color)
                            Text(item.temprature)
                                .foregroundColor(color)
                                .font(.system(size: 30))
                                .bold()
                        }
                    }
                }
                Spacer()
                Button {
                    viewModel.day.toggle()
                } label: {
                    Text("Change day time")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                        .bold()
                        .padding()
                        .background(.white)
                        .cornerRadius(15)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
