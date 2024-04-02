//
//  ListRowView.swift
//  TodoList
//
//  Created by David Cardeña on 19/2/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "This is the first title!", isCompleted: false))
        ListRowView(item: ItemModel(title: "This is the second title!", isCompleted: true))
    }
}
