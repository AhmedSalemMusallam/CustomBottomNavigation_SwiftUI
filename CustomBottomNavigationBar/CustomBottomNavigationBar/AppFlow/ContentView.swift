//
//  ContentView.swift
//  CustomBottomNavigationBar
//
//  Created by Ahmed Salem on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .house
    
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab)
                {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            Image(systemName: tab.rawValue)
                            Text("\(tab.rawValue.capitalized)")
                                .bold()
                                .animation(nil,value: selectedTab)
                        }
                        .tag(tab)
                    }
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
