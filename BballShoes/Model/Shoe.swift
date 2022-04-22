//
//  Shoe.swift
//  BBallShoeApp
//
//  Created by Kwon Young Jeong on 2022/04/22.
//

import Foundation
import SwiftUI

struct Shoe: Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	var brand: String
	var player: String
	var price: String
	var description: String
	
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
	
	private var playerImageName: String
	var playerImage: Image {
		Image(playerImageName)
	}
}
