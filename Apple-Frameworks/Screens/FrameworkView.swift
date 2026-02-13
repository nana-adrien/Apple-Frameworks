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
								FrameworkListTitleView(framework:framework)
							})
					}
				}
				.navigationTitle("🍎 Frameworks")
				.toolbar{
					ToolbarItem{
						HStack{
							Text("List")
								.foregroundColor(.gray)
								.font(.headline).padding()
							Toggle(isOn: $viewModel.enableList){
								Text(viewModel.enableList ?"enable":"disable")
									.foregroundColor(viewModel.enableList ? .black : .gray)
									.font(.headline)
							}
						}
						
					}
				}
			
		}.accentColor(Color(.label))
		
    }
}

#Preview {
	FrameworkListView()
}



