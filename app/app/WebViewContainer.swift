//
//  WebViewContainer.swift
//  app
//
//  Created by puhuan on 2020/4/30.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct WebViewContainer: View {
    @State private var propSelect = false
    var landmark: Landmark
    var body: some View {
        VStack {
            Text("WebView Test").font(.title)
            if (self.propSelect) {
                WebView(request:  URLRequest(url: URL(string: "https://swift-webview-video.now.sh/")!))
            } else {
                EmptyWebview(request:  URLRequest(url: URL(string: "https://swift-webview-video.now.sh/")!))
            }
            
            Spacer()
            VStack(alignment: .leading) {
                Toggle(landmark.name, isOn: $propSelect)
                Text(landmark.desc)
            }
            .padding()
            .frame(height: 200.0)
        }
    .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct WebViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContainer(landmark: landmarkData[0])
    }
}
