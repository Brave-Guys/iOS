import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // 첫 번째 탭 - 홈
            NavigationView {
                HomeView()
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack(spacing: 8) {
                                Image(.strengthHubIcon)
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.purple)
                                Text("홈 화면")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
            }
            .navigationBarColor(hex: "#EEEEEE")
            .tabItem {
                Image(systemName: "house")
                Text("홈")
            }

            // 두 번째 탭 - 좋아요
            NavigationView {
                CrownView()
            }
            .tabItem {
                Image(systemName: "heart")
                Text("좋아요")
            }

            // 세 번째 탭 - 프로필
            NavigationView {
                TrophyView()
            }
            .tabItem {
                Image(systemName: "person")
                Text("프로필")
            }

            // 네 번째 탭 - 설정
            NavigationView {
                MypageView()
            }
            .tabItem {
                Image(systemName: "gear")
                Text("설정")
            }
        }
    }
}
