//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct FrameworkGridView<Content:View>: View {
	
	let columns:[GridItem]
	var frameworkList:[Framework]
	@ViewBuilder let content:(Framework)->Content
	
    var body: some View {
			ScrollView{
				LazyVGrid(columns:columns){
					ForEach(frameworkList){framework in
						content(framework)
					}
				}
			}
//			.fullScreenCover(isPresented: $isShowingDetailView){
//				FrameworkDetailView(
//					framework: selectedFramework,
//					isShowingDetailView: $isShowingDetailView
//				)
//			}
    }
}





