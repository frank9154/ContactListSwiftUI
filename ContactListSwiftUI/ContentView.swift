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
        
        NavigationStack {
            ZStack {
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    //Text("Full Name: \(person.fullName)")
                    HStack {
                        Image(systemName: "phone")
                        Text("\(person.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text("\(person.email)")
                    }
                   
                    
                    Spacer()
                }
                .navigationBarTitle("\(person.fullName)")
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

