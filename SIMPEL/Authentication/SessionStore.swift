import Foundation

final class SessionStore: ObservableObject {
    static let shared = SessionStore()
    @Published private(set) var sessionToken: String?

    private let key = "session_token"

    private init() {
        sessionToken = KeychainStore.shared.read(key)
    }

    func save(token: String) {
        try? KeychainStore.shared.save(token, for: key)
        sessionToken = token
    }

    func clear() {
        KeychainStore.shared.delete(key)
        sessionToken = nil
    }
}
