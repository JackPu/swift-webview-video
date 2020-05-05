//
//  EmptyWebview.swift
//  app
//
//  Created by puhuan on 2020/5/5.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI
import WebKit

struct EmptyWebview: UIViewRepresentable {
    let request: URLRequest
    var config = WKWebViewConfiguration()
    func makeUIView(context: Context) -> WKWebView {
        config.allowsInlineMediaPlayback = false
        config.allowsAirPlayForMediaPlayback = false
        config.allowsPictureInPictureMediaPlayback = false
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct EmptyWebview_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://swift-webview-video.now.sh/")!))
    }
}
