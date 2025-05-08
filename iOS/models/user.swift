//
//  user.swift
//  iOS
//
//  Created by mac on 5/8/25.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let name: String
    let iconName: String // SF Symbols 사용
}
