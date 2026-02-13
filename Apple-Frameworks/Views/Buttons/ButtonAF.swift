//
//  ButtonAF.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct ButtonAF: View {
	let title:String
    var body: some View {
		Text(title)
			.font(.title2)
			.fontWeight(.semibold)
			.frame(width: 280,height: 50)
			.background(Color.red)
			.foregroundColor(.white)
			.cornerRadius(10)
	}
}

#Preview {
	ButtonAF(title:"Learn More")
}
