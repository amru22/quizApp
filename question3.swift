//
//  question3.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct question3: View {
    @State private var correct = ""
    var body: some View {
        ZStack{
            Color(.lightPurple).ignoresSafeArea()
            VStack{
                Text("What year was the moon landing?")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Button("1969") {
                    correct = "Correct!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightBlue)
                .foregroundColor(Color.black)
                Button("1970") {
                    correct = "Wrong!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightPink)
                .foregroundColor(Color.black)
                Button("1972") {
                    correct = "Wrong!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.lightGreen)
                .foregroundColor(Color.black)
                Text(correct)
                    .font(.largeTitle)
                    .padding(.top, 14.0)
                
            }.navigationTitle("Third Question")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
                .padding()
        }
    }
}
    
    
    
#Preview {
    question3()
}
