//
//  ListViewModel.swift
//  TodoList
//
//  Created by David Cardeña on 2/4/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "this is the first title", isCompleted: false),
            ItemModel(title: "this is the second", isCompleted: true),
            ItemModel(title: "this is the thirs", isCompleted: false)
            ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
