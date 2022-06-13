//
//  Information.swift
//  BballShoes
//
//  Created by Kwon Young Jeong on 2022/05/30.
//

import SwiftUI

struct Information: View {
	
	var body: some View {
		NavigationView {
				ScrollView {
					VStack (alignment: .leading){
						Group {
							Text("구성")
								.font(.title)
							
							Image("anatomy")
								.resizable()
								.scaledToFit()
							
							Text("어퍼")
								.font(.title2)
							Text("발이 농구화 안에서 움직이지 않도록 잡아줍니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("미드솔")
								.font(.title2)
							Text("농구화의 쿠셔닝 정도를 담당합니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("아웃솔")
								.font(.title2)
							Text("농구화의 접지력을 결정합니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
						}
						
						Divider()
						
						Group {
							Text("성능")
								.font(.title)
							
							Spacer()
							
							Text("접지 Traction")
								.font(.title2)
							Text("코트에서 미끌리지 않을수록 좋습니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("쿠션 Coushion")
								.font(.title2)
							Text("착지 시 발에 전해지는 충격을 줄어줍니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("무게 Weight")
								.font(.title2)
							Text("너무 무거우면 둔한 느낌을 줄 수도 있습니다.")
								.font(.headline)
								.foregroundColor(.secondary)
						}
						
						Group {
							Spacer()
							
							Text("지지 Support")
								.font(.title2)
							Text("발이 좌우로 흔들리지 않아야 안정적입니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("락다운 Lockdown")
								.font(.title2)
							Text("발과 신발이 따로 놀지 않도록 잡아주는 정도입니다.")
								.font(.headline)
								.foregroundColor(.secondary)
							
							Spacer()
							
							Text("내구성 Durability")
								.font(.title2)
							Text("오래 사용할 수 있어야 기분이 좋습니다.")
								.font(.headline)
								.foregroundColor(.secondary)
						}
						
						Divider()
					}
					.padding()
				}
			.navigationTitle("농구화의 모든 것")
		}
	}
}

struct Information_Previews: PreviewProvider {
	
	static var previews: some View {
		Information()
	}
}

