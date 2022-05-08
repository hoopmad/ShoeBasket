//
//  ContentView.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
	@State private var selection: Tab = .featured
	
	enum Tab {
		case featured
		case list
	}
	
	var body: some View {
		TabView(selection: $selection) {
			BrandHome()
				.tabItem {
					Label("홈", systemImage: "house.fill")
				}
				.tag(Tab.featured)
			
			ShoeList()
				.tabItem {
					Label("농구화", systemImage: "list.bullet")
				}
				.tag(Tab.list)
		}
	}
}

struct ShoeListView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environmentObject(ModelData())
	}
}
