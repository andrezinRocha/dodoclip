import SwiftUI
import SwiftData

@main
struct DodoClipApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            // Add your SwiftData models here
        ])
        let modelConfiguration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )

        do {
            return try ModelContainer(
                for: schema,
                configurations: [modelConfiguration]
            )
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "clipboard")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 48))
            Text("DodoClip")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Your clipboard manager")
                .foregroundStyle(.secondary)
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
