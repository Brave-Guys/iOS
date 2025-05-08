import SwiftUI

extension View {
    func navigationBarColor(hex: String) -> some View {
        if let uiColor = UIColor(hex: hex) {
            return AnyView(self.modifier(NavigationBarColorModifier(backgroundColor: uiColor)))
        } else {
            return AnyView(self)
        }
    }
}

struct NavigationBarColorModifier: ViewModifier {
    var backgroundColor: UIColor

    init(backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        appearance.shadowColor = nil

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    func body(content: Content) -> some View {
        content
    }
}
