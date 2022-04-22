//
//  CircleImage.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
	
    var body: some View {
        image
			.resizable()
			.scaledToFit()
			.frame(width: 320)
			.clipShape(Circle())
			.overlay {
				Circle().stroke(.white, lineWidth: 4)
			}
			.shadow(radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("airjordan36"))
    }
}
