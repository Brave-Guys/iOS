import SwiftUI

struct BoxView<Content: View>: View {
    let title: String
    let showArrow: Bool
    let content: () -> Content

    init(title: String, showArrow: Bool, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.showArrow = showArrow
        self.content = content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(title)
                    .foregroundColor(Color.purple)
                    .bold()
                Spacer()
                if showArrow {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                }
            }
            Divider()
            content()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.blue, lineWidth: 1)
        )
    }
}
