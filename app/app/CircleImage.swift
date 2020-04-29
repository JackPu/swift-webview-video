//
//  CircleImage.swift
//  app
//
//  Created by puhuan on 2020/4/29.
//  Copyright © 2020 puhuan. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("logo-200").frame(width: 100, height: 100)
            .padding()
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
