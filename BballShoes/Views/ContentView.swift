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
		case info
	}
	
	var body: some View {
		TabView(selection: $selection) {
			BrandHome()
				.tabItem {
					Label("홈", systemImage: "house.fill")
				}
				.tag(Tab.featured)
			
			Information()
				.tabItem {
					Label("정보", systemImage: "doc.text.magnifyingglass")
				}
				.tag(Tab.info)
			
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
