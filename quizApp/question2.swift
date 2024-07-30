//
//  question2.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct question2: View {
    @State private var correct = ""
    var body: some View {
        ZStack{
            Color(.lightPurple).ignoresSafeArea()
            VStack{
                Text("What is the name of a baby goat?")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Button("Kid") {
                    correct = "Correct!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightBlue)
                .foregroundColor(Color.black)
                Button("Foal") {
                    correct = "Wrong!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightPink)
                .foregroundColor(Color.black)
                Button("Cow") {
                    correct = "Wrong!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightGreen)
                .foregroundColor(Color.black)
                NavigationLink(destination: question3()) {
                
                    Text("Next Question")
                }
                Text(correct)
                    .font(.largeTitle)
                    .padding(.top, 14.0)
                
            }.navigationTitle("Second Question")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                .padding()
        }
    }
}




#Preview {
    question2()
}
