//
//  GifImage.swift
//  wwdc
//
//  Created by Gustavo Batista on 05/04/23.
//

import SwiftUI
import WebKit


struct GifImage: UIViewRepresentable {
    private let name: String
    
    init(name: String) {
        self.name = name
    }
    
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webView.isOpaque = false
        webView.scrollView.backgroundColor = .clear
        
        webView.load(data,
                     mimeType: "image/gif",
                     characterEncodingName: "UTF-8",
                     baseURL: url.deletingLastPathComponent()
        )
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}


