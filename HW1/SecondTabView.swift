//
//  SecondTabView.swift
//  HW1
//
//  Created by Atagullin Ismail on 11.09.2024.
//

import SwiftUI

struct SecondTabView: View {
    var items = ["Cell 1", "Cell 2", "Cell 3"]
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(destination: DetailView(item: item)) {
                    Text(item)
                }
            }
            .navigationTitle("List")
        }
        .navigationViewStyle(.stack)
    }
}

struct DetailView: View {
    let item: String
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack {
            Text("Details for \(item)")
            Button("Back to list") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationBarBackButtonHidden()
    }
}
