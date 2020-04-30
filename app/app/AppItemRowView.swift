//
//  AppItemRowView.swift
//  app
//
//  Created by puhuan on 2020/4/30.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct AppItemRowView: View {
    let landmark: Landmark;
    var body: some View {
        HStack() {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        .padding()
    }
}

struct AppItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        AppItemRowView(landmark: landmarkData[0])
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
