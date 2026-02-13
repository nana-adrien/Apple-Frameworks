//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 13/02/2026.
//


import SwiftUI

struct FrameworkTitleView:View {
	let framework:Framework
	@Binding var enableList:Bool
	
	var body: some View {
		TitleViewAlign(
			enableList: $enableList,
		){
			Image(framework.imageName)
				.resizable()
				.frame(
					width:  enableList ? 70 : 90,
					height:  enableList ? 70 : 90
				)
			
			Text(framework.name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
		}
		.padding()
	}
}


private struct TitleViewAlign<Content:View >:View{
	
	@Binding var enableList:Bool
	@ViewBuilder let content:()->Content
	
	@ViewBuilder
	var body : some View{
		if enableList{
			HStack{
				content()
			}
		} else {
			VStack{
				content()
			}
		}
		
	}
	
}
