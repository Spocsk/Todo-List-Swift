//
//  TaskList.swift
//  Todo-List
//
//  Created by Dylan COUTO DE OLIVEIRA on 24/06/2025.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: { configuration.isOn.toggle() }) {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .resizable()
                    .frame(width: 20, height: 20)
                configuration.label
            }
        }
        .buttonStyle(.plain)
    }
}

struct TaskList: View {
    @Binding var tasks: [Task]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(tasks.indices, id: \.self) { index in
                Toggle(isOn: $tasks[index].isCompleted) {
                    Text(tasks[index].name)
                        .strikethrough(tasks[index].isCompleted)
                }
                .toggleStyle(CheckboxToggleStyle())
            }
        }
        .padding(.all, 8)
    }
}

struct TaskListPreviewWrapper: View {
    @State private var tasks: [Task] = [
        Task(id: UUID(), name: "Faire la vaiselle", isCompleted: false),
        Task(id: UUID(), name: "Promener le chien", isCompleted: false)
    ]

    var body: some View {
        TaskList(tasks: $tasks)
    }
}

#Preview {
    TaskListPreviewWrapper()
}
