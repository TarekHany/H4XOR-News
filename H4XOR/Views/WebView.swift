//
//  WebView.swift
//  H4XOR
//
//  Created by Tarek Hany on 9/27/20.
//  Copyright © 2020 Tarek Hany. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
   
    
    let urlString: String?
        
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
   
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request  = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
