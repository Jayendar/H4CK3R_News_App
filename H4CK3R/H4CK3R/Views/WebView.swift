//
//  WebView.swift
//  H4CK3R
//
//  Created by Jayendar A on 19/11/20.
//

import Foundation
import SwiftUI
import WebKit

// To just show the contents of the webpage in the DetailView
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

