//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct FrameworkListView: View {
	
	@StateObject var viewModel = FrameworkListViewModel()
	
    var body: some View {
		NavigationView{
				List{
					ForEach(MockData.frameworks){framework in
						NavigationLink(
							destination: {
								FrameworkDetailView(
									framework: viewModel.selectedFramework ?? MockData.sampleFramework,
									isShowingDetailView: $viewModel.isShowingDetailView
								)
							},
							label:{
								FrameworkTitleView(framework:framework)
							})
					}
				}
			.navigationTitle("🍎 Frameworks")
		}
	
    }
}

#Preview {
	FrameworkListView()
}



