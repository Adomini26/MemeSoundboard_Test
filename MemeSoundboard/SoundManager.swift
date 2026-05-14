import AVFoundation
import AudioToolbox

final class SoundManager {
    static let shared = SoundManager()
    private var player: AVAudioPlayer?

    private init() {
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true)
    }

    func play(_ soundFile: String) {
        // Stop any currently playing sound so taps feel snappy
        player?.stop()

        let extensions = ["mp3", "wav", "m4a", "aiff"]
        for ext in extensions {
            if let url = Bundle.main.url(forResource: soundFile, withExtension: ext) {
                do {
                    player = try AVAudioPlayer(contentsOf: url)
                    player?.prepareToPlay()
                    player?.play()
                    return
                } catch {
                    print("SoundManager: failed to play \(soundFile).\(ext) — \(error)")
                }
            }
        }
        // Graceful fallback to a generic system click so the button always responds
        AudioServicesPlaySystemSound(1104)
        print("SoundManager: '\(soundFile)' not found in bundle — using system sound fallback")
    }
}
