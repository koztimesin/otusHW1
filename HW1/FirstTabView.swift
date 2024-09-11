//
//  FirstTabView.swift
//  HW1
//
//  Created by Atagullin Ismail on 11.09.2024.
//

import SwiftUI

struct FirstTabView: View {
    @Binding var tabSelection: TabSelection
    
    var body: some View {
        ZStack {
            Button {
                tabSelection = .secondTab
            } label: {
                Text("Go to second tab")
            }
        }
    }
}
