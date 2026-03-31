import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.blue
    @State private var textColor = Color.black
    @State private var backgroundColor = Color.white

    var body: some View {
        // macOS 上 Swift 6 SDK 下 `Form { }` 易与 `Form` 的样式配置型初始化器歧义，改用 List。
        List {
            Section {
                ColorPicker("选择颜色", selection: $selectedColor)

                Circle()
                    .fill(selectedColor)
                    .frame(width: 60, height: 60)
            } header: {
                Text("基础 ColorPicker")
            }

            Section {
                ColorPicker("选择颜色（带透明度）", selection: $selectedColor)

                RoundedRectangle(cornerRadius: 8)
                    .fill(selectedColor.opacity(0.5))
                    .frame(height: 50)
            } header: {
                Text("带透明度")
            }

            Section {
                ColorPicker("文字颜色", selection: $textColor)

                Text("预览文字效果")
                    .foregroundColor(textColor)
                    .font(.title)
            } header: {
                Text("文本颜色")
            }

            Section {
                ColorPicker("背景颜色", selection: $backgroundColor)

                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(backgroundColor)
                        .frame(height: 60)

                    Text("背景预览")
                        .foregroundColor(.primary)
                }
            } header: {
                Text("背景颜色")
            }

            Section {
                HStack {
                    ForEach([Color.red, .orange, .yellow, .green, .blue, .purple], id: \.self) { color in
                        Circle()
                            .fill(color)
                            .frame(width: 30, height: 30)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
            } header: {
                Text("预设颜色")
            }
        }
        .listStyle(.inset)
        .padding()
    }
}
