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
    var config = WKWebViewConfiguration()
    func makeUIView(context: Context) -> WKWebView {
        config.applicationNameForUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 core_player_wm/0.1.1"
        config.allowsInlineMediaPlayback = true
        config.allowsAirPlayForMediaPlayback = true
        config.allowsPictureInPictureMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = .all
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebVIew_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://swift-webview-video.now.sh/")!))
    }
}
