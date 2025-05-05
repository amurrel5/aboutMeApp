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
        "Image1", "Image6", "Image5", "Image4", "Image3", "Image2"
    ]
    let texts = [
        "I love cinematography/photograpy!","Concerts are my love language. CB is my fav!!", "I enjoy making balloon decor, it's very calming and a fun way to be creative.", "I enjoy spending time with friends and family.", "Interning in DC at the House of Representatives was an amazing experience/ is a core memory.", "I love to travel, first trip to NY!"
    ]
    var body: some View {
        ZStack{
            Color.pink.opacity(0.15).edgesIgnoringSafeArea(.all)
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
                    Color.purple.opacity(0.70)
                    Text("My name is Ashley Murrell and I am 28 years old. This is my 6th year in education and I have taught K-2nd grade. I am currently studying for the LSAT in hopes of entering law school in fall of 2026 to further advocate for my students. I enjoy lots of different things, click below to find out more about some of my favorite things.")
                        .font(.body)
                        .foregroundColor(.black.opacity(0.65))
                        .padding()
                    //Divider()
                    //.background(Color.pink)
                    Color.purple.opacity(0.70)
                    
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
                                    Text("Press Me!")
                                        .padding(8)
                                        .background(Color.purple.opacity(0.80))
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
                                    Text("Press Me!")
                                        .padding(8)
                                        .background(Color.purple.opacity(0.80))
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
}
    #Preview {
        ContentView()
        
        
        
        
        
    }

