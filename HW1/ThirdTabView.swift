//
//  ThirdTabView.swift
//  HW1
//
//  Created by Atagullin Ismail on 11.09.2024.
//

import SwiftUI

struct ThirdTabView: View {
    @State private var showModal = false
    
    var body: some View {
        Button("Open modal content view") {
            showModal.toggle()
        }
        .sheet(isPresented: $showModal) {
            ModalContentView()
                .presentationDetents([.medium])
                .interactiveDismissDisabled()
        }
    }
}

struct ModalContentView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            Text("Modal content view")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "xmark.circle")
                                .font(.title)
                                .tint(.black)
                        }
                    }
                }
        }
        .interactiveDismissDisabled()
    }
}

#Preview {
    ModalContentView()
}
