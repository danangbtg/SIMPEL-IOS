# SIMPEL iOS

Client iOS untuk SIMPEL SMP Negeri 8 Bontang.

## Tahap awal
- Swift + SwiftUI
- WKWebView untuk halaman SIMPEL yang sudah ada
- Keychain untuk session/login jangka panjang
- Struktur FCM/APNs disiapkan, Firebase SDK ditambahkan pada tahap notifikasi
- GitHub Actions macOS untuk build simulator

## Server
Default URL: `https://siswa.smpn8bontang.sch.id`

Ubah `SIMPEL/App/AppConfig.swift` jika URL server berubah.

## Build GitHub Actions
Workflow `ios-build.yml` membangun target simulator tanpa signing sehingga dapat memvalidasi source/project terlebih dahulu.

## Tahap berikutnya
1. Integrasi Firebase iOS SDK + `GoogleService-Info.plist`
2. APNs capability dan Firebase Messaging
3. Keychain session yang terhubung dengan mekanisme login server
4. Upload gallery/camera
5. TestFlight/signing
