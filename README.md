# SHATL Mod Loader

一个基于 Flutter 开发的 Terraria SHATL Mod 加载器与控制客户端。

通过 Android 悬浮窗与 SHATL Mod 进行通信，可以在游戏运行过程中快速查看和修改游戏数据。

## ✨ 功能

* 🎮 Terraria SHATL Mod 控制
* 📱 Android 悬浮窗
* 🔌 TCP 网络通信
* 📦 Protobuf 数据传输
* 🎒 游戏物品 / 背包管理
* 🔍 物品搜索
* ⚙️ 游戏数据修改
* 🔄 实时同步游戏状态
* 🖥️ 主界面与游戏悬浮窗分离
* 🌙 支持深色界面

## 🔧 工作原理

SHATL Mod Loader 主要由 Flutter 客户端和 Terraria Mod 两部分组成：

```text
┌──────────────────────┐
│    Flutter App       │
│                      │
│  Main UI             │
│      │               │
│      ├── TCP Client ──────────┐
│      │                        │
│  Overlay UI                   │
└──────────────────────┘        │
                                │
                         TCP / Protobuf
                                │
                                ▼
                    ┌────────────────────┐
                    │    SHATL Mod      │
                    │                    │
                    │ Terraria / Unity   │
                    └────────────────────┘
```

客户端与 Mod 之间使用 **TCP + Protocol Buffers** 进行通信。

数据包采用长度前缀进行封包，以支持多个 Protobuf 数据包在同一个 TCP 连接中传输。


## 🚀 开始使用

### 环境要求

* Flutter
* Dart
* Android SDK
* Android NDK（如果需要编译 SHATL Mod）
* Terraria
* 已安装 SHATL Mod

### 获取项目

```bash
git clone <repository-url>
cd shatl_mod_loader
```

安装依赖：

```bash
flutter pub get
```

### 运行

连接 Android 设备：

```bash
flutter devices
```

然后：

```bash
flutter run
```

## 📦 构建 Release

生成 APK：

```bash
flutter build apk --release
```

## 🔐 悬浮窗权限

App 使用 Android 悬浮窗功能。

首次启动时需要允许：

> 在其他应用上层显示

如果没有授予悬浮窗权限，悬浮窗无法正常启动。

## ⚠️ 注意事项

本项目目前主要面向 Android 环境。

使用前请确保：

1. Terraria 正常运行
2. SHATL Mod 已正确加载
3. Flutter App 可以连接到 SHATL Mod
4. TCP 端口配置正确
5. 已授予悬浮窗权限

部分功能需要 SHATL Mod 提供对应的协议支持。

## ⭐ Support

如果这个项目对你有帮助，欢迎 Star ⭐

---

**SHATL Mod Loader**
Flutter + Android + TCP + Protobuf
