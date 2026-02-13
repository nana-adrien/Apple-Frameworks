//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct FrameworkDetailView: View {
	var framework:Framework
	@State private var isShowingSafariView=false
	@State private var enableList=false
	
    var body: some View {
		VStack{
			FrameworkTitleView(
				framework:framework,
				enableList: $enableList)
			Text(framework.description)
				.font(.body)
				.padding()
			
			Spacer()
			
			Button{
				isShowingSafariView=true
			} label: {
				ButtonAF(title:"Learn More")
			}
		}.sheet(isPresented: $isShowingSafariView){
			SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
		}
	}
}

#Preview {
	//FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: $true)
}
