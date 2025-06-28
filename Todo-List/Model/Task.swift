//
//  Task.swift
//  Todo-List
//
//  Created by Dylan COUTO DE OLIVEIRA on 24/06/2025.
//

import Foundation

struct Task : Identifiable, Encodable, Decodable {
    var id: UUID
    var name: String
    var isCompleted: Bool
}
