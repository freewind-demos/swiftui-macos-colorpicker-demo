# SwiftUI macOS ColorPicker 颜色选择器

## 简介

演示 SwiftUI 中 ColorPicker 的用法，系统原生颜色选择器。

## 快速开始

```bash
cd swiftui-macos-colorpicker-demo
xcodegen generate
open SwiftUIColorPickerDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### 基础 ColorPicker

```swift
@State private var color = Color.blue

ColorPicker("选择颜色", selection: $color)
```

### 隐藏标签

```swift
ColorPicker("", selection: $color)
    .labelsHidden()
```

## 完整示例

```swift
struct ContentView: View {
    @State private var selectedColor = Color.blue

    var body: some View {
        VStack {
            ColorPicker("颜色", selection: $selectedColor)
            Circle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
        }
    }
}
```

## 完整讲解（中文）

### ColorPicker 特点

- 系统原生颜色选择器
- 支持颜色面板和滴管
- 支持透明度调整
- 与 SwiftUI Color 无缝集成
