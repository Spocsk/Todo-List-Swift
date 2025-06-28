//
//  ContentView.swift
//  Todo-List
//
//  Created by Dylan COUTO DE OLIVEIRA on 20/06/2025.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State var taskText: String = ""
    @StateObject private var taskViewModel = TaskViewModel()
    
    var body: some View {
        Text("Todo List 🗒️")
            .font(.headline)
            .padding()
            .foregroundColor(.gray)
        Text("\(taskViewModel.tasks.count) tâches")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        
        ZStack {
            ScrollView {
                TaskList(tasks: $taskViewModel.tasks)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity)
            .safeAreaInset(edge: .bottom) {
                TextField("Nom de la tâche", text: $taskText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onSubmit {
                        let task = Task(id: UUID(), name: taskText, isCompleted: false)
                        if(!taskText.isEmpty){
                            taskViewModel.addTask(task)
                            taskText = ""
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
