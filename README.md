# Meme Soundboard — iOS App

A 12-button meme soundboard built with SwiftUI. Each square shows a meme emoji and plays its corresponding sound when tapped.

## Project Layout

```
MemeSoundboard/
└── MemeSoundboard/
    ├── MemeSoundboardApp.swift   — App entry point
    ├── ContentView.swift         — 3×4 grid layout
    ├── MemeButton.swift          — Animated tap button + haptics
    ├── Meme.swift                — Data model + 12 meme definitions
    ├── SoundManager.swift        — AVAudioPlayer wrapper
    └── Info.plist
```

## Xcode Setup (one-time)

1. Open **Xcode → File → New → Project → App**
2. Product Name: `MemeSoundboard`, Interface: `SwiftUI`, Language: `Swift`
3. Delete the auto-generated `ContentView.swift` (move to trash)
4. Drag all 5 `.swift` files + `Info.plist` into the project navigator  
   ✅ "Copy items if needed" checked  
   ✅ Target membership = MemeSoundboard
5. In **Build Settings → Info.plist File**, set the path to `MemeSoundboard/Info.plist`

## Adding Sound Files

`SoundManager` looks for each file in the app bundle, trying `.mp3`, `.wav`, `.m4a`, `.aiff` extensions.

| Button        | Expected filename       |
|---------------|-------------------------|
| Bruh          | `bruh.mp3`              |
| Air Horn      | `airhorn.mp3`           |
| Sad Trombone  | `sad_trombone.mp3`      |
| Vine Boom     | `vine_boom.mp3`         |
| Oof           | `oof.mp3`               |
| Windows Error | `windows_error.mp3`     |
| Wow           | `wow.mp3`               |
| Nyan Cat      | `nyan_cat.mp3`          |
| Much Wow      | `doge.mp3`              |
| MLG           | `mlg.mp3`               |
| To Be Cont'd  | `to_be_continued.mp3`   |
| Troll Face    | `troll.mp3`             |

1. Download free meme sound files (Myinstants, Voicy, Zedge, etc.)
2. Rename them to match the table above
3. Drag them into Xcode — make sure **"Add to targets: MemeSoundboard"** is checked
4. Build & run

> If a sound file is missing, the button still works — it falls back to a system tap sound and prints a message to the Xcode console.

## Customising Memes

Edit `MemeData.all` in `Meme.swift` to swap names, emojis, colours, or sound file names. Each `Meme` entry is just a struct with those four fields.

## Requirements

- iOS 16+
- Xcode 15+
