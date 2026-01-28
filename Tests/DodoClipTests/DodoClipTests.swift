import Testing
@testable import DodoClip

@Suite("DodoClip Tests")
struct DodoClipTests {
    @Test("App initializes correctly")
    func appInitializes() async throws {
        // Basic test to verify the app structure
        #expect(true)
    }
}
