//
// OFFSignApp.swift
// OFFSign bComment ESign Comment Comment
//
// Comment Comment Comment Comment
//

import SwiftUI

@main
struct OFFSignApp: App {
 @StateObject private var appState = AppState()

 init() {
 // Comment Comment Comment Comment Comment Comment
 StorageManager.shared.bootstrap()
 }

 var body: some Scene {
 WindowGroup {
 RootTabView()
 .environmentObject(appState)
 .preferredColorScheme(.dark) // Info Info Info
 }
 }
}

/// Status Comment Comment Comment Comment Comment
final class AppState: ObservableObject {
 @Published var importedApps: [AppPackage] = []
 @Published var certificates: [SigningCertificate] = []
 @Published var activeCertificate: SigningCertificate?

 init() {
 reload()
 }

 /// Comment Comment Comment Comment Comment
 func reload() {
 importedApps = StorageManager.shared.loadApps()
 certificates = StorageManager.shared.loadCertificates()
 activeCertificate = certificates.first(where: { $0.isActive })
 }
}
