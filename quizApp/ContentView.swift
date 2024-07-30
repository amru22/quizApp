//
//  ContentView.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var correct = ""
    var body: some View {
        NavigationStack {
           
            ZStack{
                Color(.lightPurple).ignoresSafeArea()
                VStack {
                    Text("What is the Capital of Belgium?")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Button("Paris") {
                        correct = "Wrong!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.lightBlue)
                    .foregroundColor(Color.black)
                    Button("Brussels") {
                        correct = "Correct!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(Color.black)
                    .tint(.lightPink)
                    Button("London") {
                        correct = "Wrong!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.lightGreen)
                    .foregroundColor(Color.black)
                    NavigationLink(destination: question2() ) {
                        Text("Next Question")
                        
                        
                    }
                    Text(correct)
                        .font(.largeTitle)
                        .padding(.top, 14.0)
                }.navigationTitle("First Question")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                    .padding()
            }
        }
    }
}
    




    #Preview {
        ContentView()
    }

