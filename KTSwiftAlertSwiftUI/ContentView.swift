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
}

struct ButtonsContainer: View {
    @Binding var isOn: Bool
    var body: some View {
        VStack(spacing: 15) {
            HStack(spacing: 15) {
                Button(action: {
                    self.isOn = true
                    print("Single Alert tapped")
                }) {
                   Text("Single Alert")
                }
                Button(action: {
                    self.isOn = true
                    print("Alert with image pressed")
                }) {
                   Text("Alert with image")
                }
            }
            HStack(spacing: 15) {
                Button(action: {
                    self.isOn = true
                    print("Double Alert tapped")
                }) {
                   Text("Double Alert")
                }
                Button(action: {
                    self.isOn = true
                }) {
                   Text("Alert with TextField")
                }.alert(isPresented: $isOn) { () -> Alert in
                    Alert(title: Text("Important message"), message: Text("wear this"), dismissButton: .default(Text("Got it!")))
                }
            }
        }
    }
}

struct MainNavView: View {
    @State private var showAlert: Bool = false
    var body: some View {
        ButtonsContainer(isOn: $showAlert)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
