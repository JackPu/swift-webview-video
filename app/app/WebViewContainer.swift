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
    @State private var url = "https://swift-webview-video.now.sh/"
    @State private var inputUrl = ""
    var landmark: Landmark
    var body: some View {
        VStack {
            Text("WebView Test").font(.title)
            if (self.propSelect) {
                WebView(request:  URLRequest(url: URL(string: self.url)!))
            } else {
                EmptyWebview(request:  URLRequest(url: URL(string: self.url)!))
            }
            
            Spacer()
            VStack(alignment: .leading) {
                TextField("Input your web url", text: $inputUrl)
                Button(action: {
                    if (self.verifyUrl(urlString: self.inputUrl)) {
                        self.url = self.inputUrl
                    } else {
                        self.createAler()
                    }
                    
                }) {
                    Text("提交测试")
                }
                Toggle(landmark.name, isOn: $propSelect)
                Text(landmark.desc)
            }
            .padding()
            .frame(height: 200.0)
        }
    .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
    func verifyUrl(urlString: String?) -> Bool {
        if let urlString = urlString {
            if let url = NSURL(string: urlString) {
                return UIApplication.shared.canOpenURL(url as URL)
            }
        }
        return false
    }
    func createAler() -> Void {
        Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
    }
}

struct WebViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        WebViewContainer(landmark: landmarkData[0])
    }
}
