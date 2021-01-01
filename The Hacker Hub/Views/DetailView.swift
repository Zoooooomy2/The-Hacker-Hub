//
//  DetailView.swift
//  The Hacker Hub
//
//  Created by Matt Nutt on 31/12/2020.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.co.uk")
    }
}


