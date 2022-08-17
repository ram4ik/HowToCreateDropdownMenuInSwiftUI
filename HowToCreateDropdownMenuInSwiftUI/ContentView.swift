//
//  ContentView.swift
//  HowToCreateDropdownMenuInSwiftUI
//
//  Created by Ramill Ibragimov on 17.08.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var choice = "Options"

    var body: some View {
        VStack {
            Text("Drop Down Menu")
                .font(.largeTitle)
            Menu {
                Button {
                    choice = "First Choice"
                } label: {
                    Text("First Option")
                }
                Button {
                    choice = "Second Choice"
                } label: {
                    Text("Second Option")
                }
                Button {
                    choice = "Third Choice"
                } label: {
                    Text("Third Option")
                }
            } label: {
                Label {
                    Text("\(choice)")
                } icon: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
