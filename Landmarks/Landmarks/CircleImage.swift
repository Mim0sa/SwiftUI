//
//  CircleImage.swift
//  Landmarks
//
//  Created by CM on 2020/7/9.
//  Copyright © 2020 mimosa. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("img")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
