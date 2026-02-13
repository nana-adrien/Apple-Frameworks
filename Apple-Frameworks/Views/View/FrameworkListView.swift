//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import SwiftUI

struct FrameworkListView<Content:View>: View {
	var frameworkList:[Framework]
	@ViewBuilder let content: (Framework) -> Content
	
	
    var body: some View {
				List{
					ForEach(frameworkList){framework in
						content(framework)
					}
				}
    }
}



