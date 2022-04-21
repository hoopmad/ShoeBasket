//
//  RectangleImage.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct RectangleImage: View {
	var image: Image
	
    var body: some View {
        image
			.resizable()
			.scaledToFit()
			.frame(width: 350)
			.clipShape(Rectangle())
			.shadow(radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("airjordan36"))
    }
}
