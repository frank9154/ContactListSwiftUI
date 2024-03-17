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
                        Label("Contacts", systemImage: "person.2.fill")
                    }
                Text("Numbers")
                    .tabItem {
                        Label("Numbers", systemImage: "phone.fill")
                    }
            }
        }
    }
}
