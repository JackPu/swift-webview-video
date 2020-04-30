//
//  WebVIew.swift
//  app
//
//  Created by puhuan on 2020/4/29.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI
import WebKit

private var screenSize = UIScreen.main.bounds
private var screenWidth = screenSize.width

struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebVIew_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://ioscreator.com")!)).previewLayout(.fixed(width: screenWidth, height: 320))
    }
}
