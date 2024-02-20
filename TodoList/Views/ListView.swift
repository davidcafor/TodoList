//
//  ListView.swift
//  TodoList
//
//  Created by David Cardeña on 19/2/24.
//

import SwiftUI

struct ListView: View {
    
    @State var item: [String] = [
    "this is the first title",
    "this is the second",
    "third"
    ]
    
    var body: some View {
        List {
            ForEach(item, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


