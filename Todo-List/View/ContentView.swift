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
    
    var body: some View {
        VStack {
            TextField("Nom de la tâche", text: $taskText)
                .onSubmit {
                    let task = Task(id: UUID(), name: taskText, isCompleted: false)
                    do {
                        let data = try JSONEncoder().encode(task)
                        UserDefaults.standard.set(data, forKey: task.id.uuidString)
                    } catch {
                        print("Erreur lors de l'encodage de la tâche: \(error)")
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
