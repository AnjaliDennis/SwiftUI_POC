//
//  ContentView.swift
//  MapPOC
//
//  Created by Anjali Pragati Dennis on 08/08/20.
//  Copyright © 2020 Anjali Pragati Dennis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State  var postcodeValue: String = ""
    var body: some View {
        ZStack {
            Color(red: 214/255, green: 114/255, blue: 158/255)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Image("InfyLogoImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height:35)
                    }.padding()
                    
                    CirclePlaceholderImage()
                        .frame(width: 165, height: 165)
                        .padding(.top, -50)
                        .padding(.bottom, -20)
                    
                    
                    Text("Store Locator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    
                    HStack(alignment:.center) {
                        Text("Find a Store:")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        TextField("Enter postcode to search", text: $postcodeValue)
                            .foregroundColor(Color(red: 223/255, green: 18/255, blue: 117/255))
                            .background(Color.white)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding()
                        .padding(.bottom, -10)
                    
                    MapView()
                        .frame(height: 375)
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
