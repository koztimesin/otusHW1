//
//  FourthTabView.swift
//  HW1
//
//  Created by Atagullin Ismail on 11.09.2024.
//

import SwiftUI
import UIKit

struct FourthTabView: View {
    @Binding var tabSelection: TabSelection
    
    var body: some View {
        UIButtonRepresentable().frame(width: 200, height: 50).onTapGesture {
            tabSelection = .firstTab
        }
    }
}

struct UIButtonRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Go to first tab", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBlue
        
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {}
}
