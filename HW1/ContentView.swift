//
//  ContentView.swift
//  HW1
//
//  Created by Atagullin Ismail on 09.09.2024.
//

import SwiftUI
struct ContentView: View {
    
    @State var tabSelection: TabSelection = .firstTab
    
    var body: some View {
        TabView(selection: $tabSelection){
            FirstTabView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "house")
                    Text("First tab")
                }
                .tag(TabSelection.firstTab)
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "circle.grid.3x3.fill")
                    Text("Second tab")
                }
                .tag(TabSelection.secondTab)
            
            ThirdTabView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Third tab")
                }
                .tag(TabSelection.thirdTab)
            
            FourthTabView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Fourth tab")
                }
                .tag(TabSelection.fourthTab)
        }
    }
}

#Preview {
    ContentView()
}
