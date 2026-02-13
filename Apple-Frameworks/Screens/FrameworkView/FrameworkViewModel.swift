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
	@Published var enableList=false
	
	let columns:[GridItem]=[GridItem(.flexible()),
							GridItem(.flexible()),
							GridItem(.flexible()),]
}
