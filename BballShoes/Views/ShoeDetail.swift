//
//  ShoeDetail.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ShoeDetail: View {
	@EnvironmentObject var modelData: ModelData
	var shoe: Shoe
	
	var shoeIndex: Int {
		modelData.shoes.firstIndex(where: { $0.id == shoe.id })!
	}
	
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
				HStack{
					Text(shoe.name)
						.font(.title)
					FavoriteButton(isSet: $modelData.shoes[shoeIndex].isFavorite)
				}
				
				HStack {
					Text(shoe.brandName)
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
				Spacer()
				Text(shoe.description)
					.font(.body)
					.fontWeight(.thin)
					.foregroundColor(.primary)
					.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
				
				Divider()
				
				Link("구매 링크", destination: URL(string: shoe.shoeUrl)!)
				
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
	static let modelData = ModelData()
	
    static var previews: some View {
		ShoeDetail(shoe: modelData.shoes[0])
			.environmentObject(modelData)
    }
}
