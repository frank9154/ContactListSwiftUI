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
            .navigationBarTitle("Contact List")

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
            //Text("Full Name: \(person.fullName)")
            Text("Email: \(person.email)")
            Text("Phone: \(person.phoneNumber)")
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("\(person.fullName)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

