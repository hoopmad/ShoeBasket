//
//  BrandRow.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/05/08.
//

import SwiftUI

struct BrandRow: View {
	var brandName: String
	var items: [Shoe]
	
    var body: some View {
		VStack(alignment: .leading) {
			Text(brandName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: 0) {
					ForEach(items) { shoe in
						NavigationLink {
							ShoeDetail(shoe: shoe)
						} label : {
							BrandItem(shoe: shoe)
						}
					}
				}
			}
			.frame(height: 185)
		}
    }
}

struct BrandRow_Previews: PreviewProvider {
	static var shoes = ModelData().shoes
	
    static var previews: some View {
        BrandRow(
			brandName: shoes[0].brand.rawValue,
			items: Array(shoes.prefix(4))
		)
    }
}
