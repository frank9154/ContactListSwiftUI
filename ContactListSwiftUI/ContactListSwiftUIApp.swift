//
//  ContactListSwiftUIApp.swift
//  ContactListSwiftUI
//
//  Created by Александр Соколов on 16.03.2024.
//

import SwiftUI

@main
struct ContactListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Contacts", systemImage: "person.crop.circle")
                    }
                Text("Numbers")
                    .tabItem {
                        Label("Numbers", systemImage: "heart.fill")
                    }
            }
        }
    }
}
