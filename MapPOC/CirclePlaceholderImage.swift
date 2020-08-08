//
//  CirclePlaceholderImage.swift
//  MapPOC
//
//  Created by Anjali Pragati Dennis on 08/08/20.
//  Copyright © 2020 Anjali Pragati Dennis. All rights reserved.
//

import SwiftUI

struct CirclePlaceholderImage: View {
    var body: some View {
        ZStack {
            Image("CirclePlaceholderImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .padding(.bottom, 50)
            Image("T-MobileLogoImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 29)
                .opacity(0.8)
        }
    }
}

struct CirclePlaceholderImage_Previews: PreviewProvider {
    static var previews: some View {
        CirclePlaceholderImage()
    }
}
