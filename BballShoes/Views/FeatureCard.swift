//
//  FeatureCard.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/05/27.
//

import SwiftUI

struct FeatureCard: View {
	var shoe: Shoe
	
	var body: some View {
		shoe.featureImage?
			.resizable()
			.aspectRatio(3 / 2, contentMode: .fit)
			.overlay {
				TextOverlay(shoe: shoe)
			}
		
	}
}

struct TextOverlay: View {
	var shoe: Shoe
	
	var gradient: LinearGradient {
		.linearGradient(
			Gradient(colors: [.black.opacity(0.4), .black.opacity(0)]),
			startPoint: .bottom,
			endPoint: .center)
	}
	
	var body: some View {
		ZStack(alignment: .bottomLeading) {
			gradient
			VStack(alignment: .leading) {
				Text(shoe.name)
					.font(.title)
					.bold()
				Text(shoe.brandName)
			}
			.padding()
		}
		.foregroundColor(.white)
	}
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
		FeatureCard(shoe: ModelData().features[0])
    }
}
