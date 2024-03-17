//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Александр Соколов on 16.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
         ContactListView()
            .navigationBarTitle("Contacts")

        }
    }
}

struct ContactListView: View {
    var body: some View {
        List(Person.getContactList(), id: \.email) { person in
            NavigationLink(destination: ContactDetailView(person: person)) {
                Text(person.fullName)
            }
        }
    }
}

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Full Name: \(person.fullName)")
            Text("Email: \(person.email)")
            Text("Phone: \(person.phoneNumber)")
        }
        .padding()
        .navigationBarTitle("Contact Details")
    }
}

/*@main
struct ContactsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Contacts", systemImage: "person.crop.circle")
                    }
                Text("Favorites")
                    .tabItem {
                        Label("Favorites", systemImage: "star.fill")
                    }
            }
        }
    }
}
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

