//
//  AppListView.swift
//  app
//
//  Created by puhuan on 2020/4/30.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct AppListView: View {
    var body: some View {
        NavigationView {
            List(landmarkData, id: \.id) {
                landmark in
                NavigationLink(destination: WebViewContainer(landmark: landmark)){
                    AppItemRowView(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("WKWebView Guide"))
        }
        
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView()
    }
}
