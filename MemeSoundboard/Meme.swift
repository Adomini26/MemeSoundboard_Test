import SwiftUI

struct Meme: Identifiable {
    let id: Int
    let name: String
    let emoji: String
    let color: Color
    /// Base name of the audio file in the bundle (e.g. "bruh" → bruh.mp3)
    let soundFile: String
}

enum MemeData {
    static let all: [Meme] = [
        Meme(id:  1, name: "Bruh",            emoji: "😐", color: .blue,                       soundFile: "bruh"),
        Meme(id:  2, name: "Air Horn",         emoji: "📯", color: .orange,                     soundFile: "airhorn"),
        Meme(id:  3, name: "Sad Trombone",     emoji: "😢", color: Color(white: 0.45),           soundFile: "sad_trombone"),
        Meme(id:  4, name: "Vine Boom",        emoji: "💥", color: .red,                        soundFile: "vine_boom"),
        Meme(id:  5, name: "Oof",              emoji: "😬", color: Color(red:1, green:0.75, blue:0.1), soundFile: "oof"),
        Meme(id:  6, name: "Windows Error",    emoji: "💻", color: .teal,                       soundFile: "windows_error"),
        Meme(id:  7, name: "Wow",              emoji: "😮", color: .purple,                     soundFile: "wow"),
        Meme(id:  8, name: "Nyan Cat",         emoji: "🐱", color: Color(red:1, green:0.41, blue:0.71), soundFile: "nyan_cat"),
        Meme(id:  9, name: "Much Wow",         emoji: "🐕", color: Color(red:0.72, green:0.52, blue:0.04), soundFile: "doge"),
        Meme(id: 10, name: "MLG",              emoji: "🎮", color: Color(red:0.18, green:0.8, blue:0.22), soundFile: "mlg"),
        Meme(id: 11, name: "To Be Cont'd",     emoji: "⏩", color: .indigo,                     soundFile: "to_be_continued"),
        Meme(id: 12, name: "Troll Face",       emoji: "😈", color: .mint,                       soundFile: "troll"),
    ]
}
