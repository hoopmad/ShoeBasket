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
	var description: String
	
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
}
