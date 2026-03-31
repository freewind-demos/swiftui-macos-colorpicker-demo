import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.blue
    @State private var textColor = Color.black
    @State private var backgroundColor = Color.white

    var body: some View {
        Form {
            Section("基础 ColorPicker") {
                ColorPicker("选择颜色", selection: $selectedColor)

                Circle()
                    .fill(selectedColor)
                    .frame(width: 60, height: 60)
            }

            Section("带透明度") {
                ColorPicker("选择颜色（带透明度）", selection: $selectedColor)

                RoundedRectangle(cornerRadius: 8)
                    .fill(selectedColor.opacity(0.5))
                    .frame(height: 50)
            }

            Section("文本颜色") {
                ColorPicker("文字颜色", selection: $textColor)

                Text("预览文字效果")
                    .foregroundColor(textColor)
                    .font(.title)
            }

            Section("背景颜色") {
                ColorPicker("背景颜色", selection: $backgroundColor)

                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(backgroundColor)
                        .frame(height: 60)

                    Text("背景预览")
                        .foregroundColor(.primary)
                }
            }

            Section("预设颜色") {
                HStack {
                    ForEach([.red, .orange, .yellow, .green, .blue, .purple], id: \.self) { color in
                        Circle()
                            .fill(color)
                            .frame(width: 30, height: 30)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}
