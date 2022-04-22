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
			shoe.playerImage
				.resizable()
				.ignoresSafeArea(edges: .top)
				.frame(height: 400)
			
			CircleImage(image: shoe.image)
				.offset(y: -170)
				.padding(.bottom, -170)
			
			VStack (alignment: .leading){
				Text(shoe.name)
					.font(.title)
				HStack {
					Text(shoe.brand)
						.font(.subheadline)
					Spacer()
					Text(shoe.price)
						.font(.subheadline)
				}
				
				.font(.subheadline)
				.foregroundColor(.secondary)
				
				
				
				Divider()
				
				Text("\(shoe.name)의 상세 정보")
					.font(.title2)
				Text(shoe.description)
				
				Divider()
				
				Text("착용 선수: \(shoe.player)")
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
