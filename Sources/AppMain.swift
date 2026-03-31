import SwiftUI

@main
struct ColorPickerApp: App {
    var body: some Scene {
        Window("ColorPicker 颜色选择器", id: "main") {
            ContentView()
        }
        .defaultSize(width: 450, height: 400)
    }
}
