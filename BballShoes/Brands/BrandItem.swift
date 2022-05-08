//
//  BrandItem.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/05/08.
//

import SwiftUI

struct BrandItem: View {
	var shoe: Shoe
	
    var body: some View {
		VStack(alignment: .leading) {
			shoe.image
				.renderingMode(.original)
				.resizable()
				.frame(width: 155, height: 155)
				.cornerRadius(5)
			Text(shoe.name)
				.foregroundColor(.primary)
				.font(.caption)
		}
		.padding(.leading, 15)
    }
}

struct BrandItem_Previews: PreviewProvider {
    static var previews: some View {
		BrandItem(shoe: ModelData().shoes[0])
    }
}
