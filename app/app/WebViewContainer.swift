//
//  WebViewContainer.swift
//  app
//
//  Created by puhuan on 2020/4/30.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct WebViewContainer: View {
    @State private var vibrateOnRing = false
    var body: some View {
        VStack {
            Text("WebView Test").font(.title)
            WebView(request:  URLRequest(url: URL(string: "https://me.jackpu.com")!))
            Spacer()
            VStack() {
                Toggle("Property", isOn: $vibrateOnRing)
            }
            .padding()
            .frame(height: 200.0)
        }
    }
}

struct WebViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContainer()
    }
}
