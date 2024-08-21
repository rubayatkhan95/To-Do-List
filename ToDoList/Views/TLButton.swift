import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let textColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(textColor)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Button Title", backgroundColor: .pink, textColor: .white) {
        // Action to be performed when button is pressed
        print("Button pressed")
    }
}
