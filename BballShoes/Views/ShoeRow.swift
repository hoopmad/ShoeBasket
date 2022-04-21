//
//  ShoeRow.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ShoeRow: View {
	var shoe: Shoe
	
    var body: some View {
		HStack {
			shoe.image
				.resizable()
				.frame(width: 50, height: 50)
			Text(shoe.name)
			
			Spacer()
		}
    }
}

struct ShoeRow_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			ShoeRow(shoe: shoes[0])
			ShoeRow(shoe: shoes[1])
		}
		.previewLayout(.fixed(width: 300, height: 70))
    }
}
