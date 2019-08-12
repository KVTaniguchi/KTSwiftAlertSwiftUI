//
//  ContentView.swift
//  KTSwiftAlertSwiftUI
//
//  Created by Kevin Taniguchi on 8/11/19.
//  Copyright © 2019 Kevin Taniguchi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MainNavView()
                .navigationBarTitle(Text("KTSwift Alert"))
                .navigationBarItems(trailing:
                    Button(action: {
                        print("Help tapped!")
                    }) {
                        Text("Help")
                    })
        }
        
    }
    
    /// buttons that launch different views
    
}

struct ButtonsContainer: View {
    var body: some View {
        VStack(spacing: 15) {
            Button(action: {
                print("Single Alert tapped")
            }) {
               Text("Single Alert")
            }
            Button(action: {
                print("Alert with image pressed")
            }) {
               Text("Alert with image")
            }
        }
    }
}

struct MainNavView: View {
    var body: some View {
        ButtonsContainer()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
