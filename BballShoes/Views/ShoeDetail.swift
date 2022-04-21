//
//  ShoeDetail.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ShoeDetail: View {
	var shoe: Shoe
	
	var body: some View {
		ScrollView{
			RectangleImage(image: shoe.image)
				.ignoresSafeArea(edges: .top)
				.offset(y: 50)
				.padding(.bottom, 50)
			
			VStack (alignment: .leading){
				Text(shoe.name)
					.font(.title)
				HStack {
					Text(shoe.player)
						.font(.subheadline)
					Spacer()
					Text(shoe.brand)
						.font(.subheadline)
				}
				
				.font(.subheadline)
				.foregroundColor(.secondary)
				
				Divider()
				
				Text("\(shoe.name) 의 상세 정보")
					.font(.title2)
				Text(shoe.description)
			}
			.padding()
		}
		
		
		.navigationTitle(shoe.name)
		.navigationBarTitleDisplayMode(.inline)
	}
}

struct ShoeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShoeDetail(shoe: shoes[0])
    }
}
