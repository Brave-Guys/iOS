//
//  HomeView.swift
//  iOS
//
//  Created by mac on 5/8/25.
//

import SwiftUI

struct HomeView: View {
    let users = [
        User(name: "이영정", iconName: "figure.strengthtraining.traditional"),
        User(name: "김희겸", iconName: "figure.walk"),
        User(name: "이민규", iconName: "figure.cooldown")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                BoxView(title: "Share+", showArrow: true) {
                    HStack(spacing: 24) {
                        ForEach(users) { user in
                            VStack {
                                ZStack {
                                    Circle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(width: 70, height: 70)
                                    Image(systemName: user.iconName)
                                        .font(.system(size: 30))
                                        .foregroundColor(.black)
                                }
                                Text(user.name)
                                    .font(.footnote)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }.padding()
        }
    }
}
