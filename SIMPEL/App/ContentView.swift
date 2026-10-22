import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(url: AppConfig.serverURL)
            .ignoresSafeArea()
            .onAppear {
                NotificationManager.shared.requestPermission()
            }
    }
}
