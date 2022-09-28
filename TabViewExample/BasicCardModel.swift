//
//  BasicCardModel.swift
//  TabViewExample
//
//  Created by Sasha Myshkina on 25.09.2022.
//

import SwiftUI

protocol BasicCardModelProtocol: Identifiable {
    var title: String { get }
    var subtitle: String { get }
    var description: String { get }
    var color: Color { get }
    var id: Int { get }
}

struct BasicCardModel: BasicCardModelProtocol {
    var title: String = "Card title"
    var subtitle: String  = "TabView is a view that switches between multiple child views using interactive user interface elements."
    var description: String = "This is an example of TabView with .tabViewStyle modifier, which creates specification for the appearance and interaction of a TabView."
    var id: Int
    var color: Color {
        return Color.gray.opacity(Double(id) / 10)
    }
    
    static func getExampleModels(count: Int) -> [BasicCardModel] {
        var models: [BasicCardModel] = []
        for i in 1...count {
            models.append(BasicCardModel(id: i))
        }
        return models
    }
}
