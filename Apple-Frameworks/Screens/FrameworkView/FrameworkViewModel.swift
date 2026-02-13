//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 11/02/2026.
//

import Foundation
import Combine
import SwiftUI
final class FrameworkViewModel: ObservableObject{
	var selectedFramework:Framework?{
		didSet{isShowingDetailView=true }
	}
	@Published var isShowingDetailView=false
	@Published var enableList=false
	
	let columns:[GridItem]=[GridItem(.flexible()),
							GridItem(.flexible()),
							GridItem(.flexible()),]
}
