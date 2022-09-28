//
//  TabViewExampleApp.swift
//  TabViewExample
//
//  Created by Sasha Myshkina on 25.09.2022.
//

import SwiftUI

@main
struct TabViewExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    setupUIPageControlApperance()
                }
        }
    }
    
    private func setupUIPageControlApperance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}
