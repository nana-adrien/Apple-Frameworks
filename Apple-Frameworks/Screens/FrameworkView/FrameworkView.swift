//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct FrameworkView: View {
	
	@StateObject var viewModel = FrameworkViewModel()
	
	
	var body: some View {
		NavigationStack{
			VStack{
				if viewModel.enableList {
					FrameworkListView(
						frameworkList:MockData.frameworks,
					){framework in
						NavigationLink(value: framework){
								FrameworkTitleView(
									framework:framework,
									enableList: $viewModel.enableList)
							}
					}
				} else {
					FrameworkGridView(
						columns:viewModel.columns,
						frameworkList:MockData.frameworks,
					){framework in
						NavigationLink(value: framework){
								FrameworkTitleView(
									framework:framework,
									enableList: $viewModel.enableList)
							}
					}
				}
			}.frame(maxHeight: .infinity)
				.navigationTitle("🍎 Frameworks")
				.navigationDestination(for: Framework.self,){ framework in
					FrameworkDetailView(
						framework: framework,
					)
				}
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
	FrameworkView()
}



