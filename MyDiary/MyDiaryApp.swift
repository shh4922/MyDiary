import SwiftUI
import FirebaseCore

@main
struct MyDiaryApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            IndexView()
            NavigationView {
                MainView()
            }
            
        }
    }
}
