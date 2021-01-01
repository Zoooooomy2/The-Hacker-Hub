//
//  WebView.swift
//  The Hacker Hub
//
//  Created by Matt Nutt on 31/12/2020.
//


import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if var safeString = urlString {
            if safeString.contains("http://") == true {
                let temp = "https://"
                safeString = safeString.replacingOccurrences(of: "http://", with: temp)
            }
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                print(url)
                uiView.load(request)
            }
        }
    }
    
}
