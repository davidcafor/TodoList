//
//  TodoListApp.swift
//  TodoList
//
//  Created by David Cardeña on 19/2/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
