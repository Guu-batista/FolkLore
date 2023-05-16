import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                welcome()
                    .preferredColorScheme(.light)
            }
            .navigationViewStyle(.stack) // pro Ipad
        }
    }
}
