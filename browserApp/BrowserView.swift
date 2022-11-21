//
//  BrowserView.swift
//  browserApp
//
//  Created by 河本穣也 on 2022/11/14.
//

import Foundation
import SwiftUI
import WebKit


class observable: ObservableObject {
    @Published var observation:NSKeyValueObservation?
}

struct BrowserView: UIViewRepresentable {
    var url: String = "https://google.com"
    @ObservedObject var observe = observable()
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("みかん")
        
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

struct BrowserView_Previews: PreviewProvider {
    static var previews: some View {
        BrowserView()
    }
}
