//
//  ContentView.swift
//  app
//
//  Created by puhuan on 2020/4/29.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
                .padding()
            Text("WebView Video Control")
            .font(.title)
            .foregroundColor(.red)
            .padding(.top)
            Text("@core-player").foregroundColor(.gray)
                .padding()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
