//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Digiprem on 13/02/2026.
//

import Foundation
import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
	let url:URL
	
	func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
		
		SFSafariViewController(url:url)
	}
	
	func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
