//
//  ItemModel.swift
//  TodoList
//
//  Created by David Cardeña on 2/4/24.
//

import Foundation

//Inmutable Struct
//Can't change variables on the fly, only via func
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
