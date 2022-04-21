//
//  ShoeList.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ShoeList: View {
    var body: some View {
		NavigationView{
			List (shoes){ shoe in
				NavigationLink {
					ShoeDetail(shoe: shoe)
				} label: {
					ShoeRow(shoe: shoe)
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
