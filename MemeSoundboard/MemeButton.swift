import SwiftUI

struct MemeButton: View {
    let meme: Meme
    @State private var pressed = false

    var body: some View {
        Button(action: handleTap) {
            ZStack {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(
                        LinearGradient(
                            colors: [meme.color, meme.color.opacity(0.7)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .fill(Color.white.opacity(pressed ? 0.25 : 0))
                    )
                    .shadow(
                        color: meme.color.opacity(0.55),
                        radius: pressed ? 2 : 10,
                        x: 0, y: pressed ? 1 : 5
                    )

                VStack(spacing: 6) {
                    Text(meme.emoji)
                        .font(.system(size: 48))
                        .shadow(radius: 2)

                    Text(meme.name)
                        .font(.system(size: 11, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .minimumScaleFactor(0.8)
                        .padding(.horizontal, 4)
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .scaleEffect(pressed ? 0.88 : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.55), value: pressed)
        }
        .buttonStyle(.plain)
    }

    private func handleTap() {
        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        SoundManager.shared.play(meme.soundFile)

        pressed = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18) {
            pressed = false
        }
    }
}
