//
//  BballShoesApp.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import SwiftUI

@main
struct BballShoesApp: App {
	@StateObject private var modelData = ModelData()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(modelData)
        }
    }
}
