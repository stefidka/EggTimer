//
//  ContentView.swift
//  Project1SwiftUI
//
//  Created by Stefka Vacheva on 19.03.20.
//  Copyright © 2020 Stefka Vacheva. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }.navigationBarTitle(Text("Storm Viewer"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
