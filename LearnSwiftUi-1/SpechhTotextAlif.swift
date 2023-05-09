import SwiftUI
import Speech

struct SpechhTotextAlif: View {
    @State private var recognizedText = ""

    var body: some View {
        VStack {
            Text(recognizedText)
                .padding()

            Button(action: {
                recognizeSpeech()
            }) {
                Text("Mulai Pengenalan Suara")
            }
        }
    }

    func recognizeSpeech() {
        let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US")) //atur locale sesuai bahasa yang diinginkan
        let request = SFSpeechRecognitionRequest()
        speechRecognizer?.recognitionTask(with: request) { (result, error) in
            guard let result = result else {
                print("Error: \(error?.localizedDescription ?? "Tidak dikenal")")
                return
            }

            if result.isFinal {
                recognizedText = result.bestTranscription.formattedString
            }
        }
    }
}
