//
//  ShoeList.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ShoeList: View {
	@State private var showFavoritesOnly = false
	
	var filteredShoes: [Shoe] {
		shoes.filter { shoe in
			(!showFavoritesOnly || shoe.isFavorite)
		}
	}
	
    var body: some View {
		NavigationView{
			List{
				Toggle(isOn: $showFavoritesOnly) {
					Text("즐겨찾기")
				}
				
				ForEach(filteredShoes){ shoe in
					NavigationLink {
						ShoeDetail(shoe: shoe)
					} label: {
						ShoeRow(shoe: shoe)
					}
				}
			}
			.navigationTitle("농구화")
		}
    }
}

struct ShoeList_Previews: PreviewProvider {
    static var previews: some View {
		ShoeList()
    }
}
