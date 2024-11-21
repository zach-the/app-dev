//
//  ContentView.swift
//  memorybook
//
//  Created by Zachary Bennett on 11/19/24.
//

import SwiftUI
import CoreData

enum PrivacyOptions: String, CaseIterable {
    case Private = "Private"
    case CloseFriends = "Close Friends"
    case Friends = "Friends"
    case Public = "Public"
}

struct ContentView: View {
    @State var selection: PrivacyOptions = .Private
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("your selection is: " + selection.rawValue)
                    .font(.system(size:50))
                Picker("Select Word", selection: $selection) {
                    ForEach(PrivacyOptions.allCases, id: \.self) { word in Text(word.rawValue) }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Write about your day:")
            .padding()
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//#Preview {
//    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//}
