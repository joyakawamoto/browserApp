//
//  ContentView.swift
//  browserApp
//
//  Created by 河本穣也 on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var isWebView:Bool = false
     
     var body: some View {
         
         Button(action:{
             isWebView = true
         }){
             Text("シートで表示")
         }.sheet(isPresented: $isWebView){
             BrowserView()
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
