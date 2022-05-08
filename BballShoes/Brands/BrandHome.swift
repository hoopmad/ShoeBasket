//
//  BrandHome.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/05/08.
//

import SwiftUI

struct BrandHome: View {
	@EnvironmentObject var modelData: ModelData
	
    var body: some View {
		NavigationView {
			List {
				modelData.features[0].image
					.resizable()
					.scaledToFill()
					.frame(height: 280)
					.clipped()
					.listRowInsets(EdgeInsets())
				
				ForEach(modelData.brands.keys.sorted(), id: \.self) { key in
					BrandRow(brandName: key, items: modelData.brands[key]!)
				}
				.listRowInsets(EdgeInsets())
			}
			.navigationTitle("홈")
		}
	
        
    }
}

struct BrandHome_Previews: PreviewProvider {
    static var previews: some View {
        BrandHome()
			.environmentObject(ModelData())
    }
}
