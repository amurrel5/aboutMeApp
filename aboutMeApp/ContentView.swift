//
//  ContentView.swift
//  aboutMeApp
//
//  Created by Scholar on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showText: [Bool] = Array(repeating: false, count: 6)
    let images = [
        "Mirror1 1", "Mirror1 1", "Mirror1 1", "Mirror1 1", "Mirror1 1", "Mirror1 1"
    ]
    let texts = [
        "Text for Image 1","Text for Image 2", "Text for Image 3", "Text for Image 4", "Text for Image 5", "Text for Image 6"
    ]
    var body: some View {
        ScrollView {
            VStack {
                Text("Ashley's World")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(
                        LinearGradient(colors: [.purple.opacity(2), .pink.opacity(0.80)], startPoint: .leading, endPoint: .trailing)
                    )
                    .mask(
                        Text("Ashley's World")
                            .font(.largeTitle)
                        )
                        
                Image("Mirror1 1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.purple, lineWidth: 4)
                    )
                    .shadow(radius: 5)
                    .padding()
                Color.purple.opacity(0.2)
                Text("My name is Ashley Murrell and I am 28 years old. This is my 6th year in education and I have taught K-2nd grade. I am currently studying for the LSAT in hopes of entering law school in fall of 2026 to further advocate for my students. I enjoy lots of different things, click below to find out more about some of my favorite things.")
                    .font(.body)
                    .padding()
                //Divider()
                    //.background(Color.pink)
                    Color.purple.opacity(0.2)
                
                HStack(spacing: 20) {
                    ForEach(0..<3) { index in
                        VStack {
                        // Image
                        Image(images[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 85, height: 85)
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(.vertical, 20)
                        .padding(.horizontal)
                                            
                    // Button to toggle text
                    Button(action: {
                    showText[index].toggle()
                    }) {
                        Text("Show Info")
                            .padding(8)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    
                                            }
                                            
                        // Text that shows when button is clicked
                        if showText[index] {
                            Text(texts[index])
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.top, 4)
                    }
                }
            }
        }
        .padding()

             // Second row of images
            HStack(spacing: 20) {
                ForEach(3..<6) { index in
                    VStack {
                        // Image
                        Image(images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 85, height: 85)
                            .scaledToFit()
                            .clipShape(Circle())
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                                            
                       // Button to toggle text
                       Button(action: {
                            showText[index].toggle()
                        }) {
                            Text("Show Info")
                                .padding(8)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                                            
                        // Text that shows when button is clicked
                        if showText[index] {
                           Text(texts[index])
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(.top, 4)
                       }
                    }
                }
            }
                
                
                
           .padding()
            }
        }
    }
}
        #Preview {
            ContentView()
            
            
        
    
    
}
