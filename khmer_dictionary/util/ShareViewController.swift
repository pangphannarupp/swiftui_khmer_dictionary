//
//  ShareViewController.swift
//  khmer_dictionary
//
//  Created by Pang Phanna on 29/1/23.
//

import Foundation
import UIKit
import SwiftUI

struct ShareViewController: UIViewControllerRepresentable {
    let text: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ShareViewController>) -> UIActivityViewController {
        return UIActivityViewController(activityItems: [text], applicationActivities: nil)
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ShareViewController>) {}
}
