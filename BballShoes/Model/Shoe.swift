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
	var player: String
	var price: String
	var description: String
	var isFavorite: Bool
	var isFeatured: Bool
	var brandName: String
	var shoeUrl: String
	
	var brand: Brand
	enum Brand: String, CaseIterable, Codable {
		case adidas = "Adidas"
		case jordan = "Jordan"
		case nike = "Nike"
		case puma = "Puma"
		case underarmour = "Underarmour"
	}
	
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
	
	var featureImage: Image? {
		isFeatured ? Image(imageName + "_feature"): nil
	}
	
	private var playerImageName: String
	var playerImage: Image {
		Image(playerImageName)
	}
}
