//
//  TaskViewModel.swift
//  Todo-List
//
//  Created by Dylan COUTO DE OLIVEIRA on 26/06/2025.
//

import Foundation
import Combine

final class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(_ task: Task) {
        let newTasks = tasks + [task]
        do {
            let data = try JSONEncoder().encode(newTasks)
            UserDefaults.standard.set(data, forKey: "tasks")
        } catch {
            print("Erreur lors de l'encodage des tâches : \(error)")
        }
        self.tasks = newTasks
    }
}
