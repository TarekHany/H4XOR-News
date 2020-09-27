//
//  DetailView.swift
//  H4XOR
//
//  Created by Tarek Hany on 9/27/20.
//  Copyright © 2020 Tarek Hany. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
                WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

