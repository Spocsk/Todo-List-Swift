//
//  TaskList.swift
//  Todo-List
//
//  Created by Dylan COUTO DE OLIVEIRA on 24/06/2025.
//


import SwiftUI

struct RadioButton<Label: View>: View {
    let isSelected: Bool
    let action: () -> Void
    let label: () -> Label

    var body: some View {
        Button(action: action) {
            HStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 20, height: 20)
                    if isSelected {
                        Circle()
                            .frame(width: 12, height: 12)
                    }
                }
                label()
            }
        }
        .buttonStyle(.plain)
    }
}

struct TaskList: View {
  let tasks: [Task]
  @State private var selectedID: UUID?

  var body: some View {
      VStack(alignment: .leading, spacing: 8) {
          ForEach(tasks) { task in
              RadioButton(
                  isSelected: selectedID == task.id,
                  action: { selectedID = task.id }
              ) {
                  Text(task.name)
              }
          }
      }
  }
}

#Preview {
    TaskList(tasks: [
        Task(id: UUID(), name: "Faire la vaiselle", isCompleted: false),
        Task(id: UUID(), name: "Promener le chien", isCompleted: false)
    ])
}
