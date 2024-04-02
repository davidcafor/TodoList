//
//  ItemModel.swift
//  TodoList
//
//  Created by David Cardeña on 2/4/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
