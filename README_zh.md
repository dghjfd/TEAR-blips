<div align="center">

![TEAR-blips Banner](https://img.shields.io/badge/TEAR--blips-v1.1.3-blue?style=for-the-badge&logo=github)
![FiveM](https://img.shields.io/badge/FiveM-Resource-f48024?style=for-the-badge&logo=gamejolt)
![Lua](https://img.shields.io/badge/Lua-5.4-2C2D72?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

# 🚔 TEAR-blips

**FiveM 警察专属地图标记系统**

[功能特性](#-功能特性) • [安装教程](#-安装教程) • [配置说明](#-配置说明) • [使用指令](#-使用指令) • [作者信息](#-作者信息)

**中文** | [English](README.md)

</div>

---

## 📖 项目简介

TEAR-blips 是一款**独立的 FiveM 资源**，专为警察职业设计的地图标记系统。自动检测警察职业并为所有警员实时显示位置标记，支持根据玩家状态（步行、载具、直升机）动态切换图标，警灯开启时自动红蓝闪烁效果。

---

## ✨ 功能特性

| 特性 | 说明 |
|:-----|:-----|
| 🎯 **自动检测** | 自动识别 ESX/QBCore 框架并读取警察职业 |
| 🗺️ **全图可见** | 标记全图可见，支持范围自定义 |
| 🔄 **动态状态** | 步行、载具、直升机、紧急模式不同图标 |
| 🚨 **警灯闪烁** | 警灯开启时红蓝交替闪烁效果 |
| ⚡ **性能优化** | 基于距离的动态刷新间隔，优化服务器性能 |
| 🎨 **完全可配置** | 颜色、图标、范围、间隔、提示语均可自定义 |
| 🔒 **警察专属** | 指令仅限警察使用，支持自定义提示信息 |

---

## 📦 依赖环境

- **FiveM** 服务器
- **ESX** 或 **QBCore** 框架
- **Lua 5.4**

---

## 🚀 安装教程

### 步骤 1：下载资源
```bash
git clone https://github.com/dghjfd/TEAR-blips.git
```

### 步骤 2：放置资源
1. 将 **`TEAR-blips`** 文件夹放入服务器的 `resources` 目录
2. ⚠️ **请勿重命名**该文件夹（脚本已启用资源名校验）

### 步骤 3：启用资源
在 `server.cfg` 中添加：
```cfg
ensure TEAR-blips
```

### 步骤 4：基础配置
编辑 **`config.lua`**：
- 将 `Config.Framework` 设置为 `"esx"` 或 `"qbcore"`
- 在 `Config.PoliceJobs` 中添加你的警察职业名称

---

## ⚙️ 配置说明

所有配置项均在 **`config.lua`** 文件中。

### 🏗️ 框架设置
| 配置项 | 类型 | 默认值 | 说明 |
|:-------|:-----|:-------|:-----|
| `Framework` | string | `"esx"` | 使用的框架：`"esx"` 或 `"qbcore"` |

### 👮 警察职业
| 配置项 | 类型 | 说明 |
|:-------|:-----|:-----|
| `PoliceJobs` | array | 视为警察的职业名称列表 |

**默认警察职业列表：**
```lua
Config.PoliceJobs = {
    "police",
    "sheriff",
    "bcso",
    "sahp",
    "usmc",
    "safr",
}
```

### 🗺️ 地图可见性
| 配置项 | 类型 | 默认值 | 说明 |
|:-------|:-----|:-------|:-----|
| `BlipShortRange` | boolean | `false` | `false` = 全图可见，`true` = 仅雷达范围 |

### ⚡ 性能优化
| 配置项 | 类型 | 默认值 | 说明 |
|:-------|:-----|:-------|:-----|
| `RadarRange` | float | `250.0` | 高频更新距离（米） |
| `UpdateInterval` | int | `500` | 近距离玩家更新间隔（毫秒） |
| `FarUpdateInterval` | int | `2000` | 远距离玩家更新间隔（毫秒） |

### 🎨 Blip 样式
| 配置项 | 类型 | 默认值 | 说明 |
|:-------|:-----|:-------|:-----|
| `BlipColor` | int | `3` | 颜色：`1`=红色，`3`=蓝色，`30`=黄色 |
| `BlipScale` | float | `1.0` | Blip 大小缩放 |
| `BlipDisplay` | int | `4` | 显示模式：`4`=地图+雷达 |
| `BlipCategory` | int | `2` | Blip 分类（图例显示） |
| `BlipShowCone` | boolean | `false` | 显示前方扇形区域 |
| `BlipHeadingIndicator` | boolean | `true` | 显示 Blip 上的朝向箭头 |

### 🎯 图标设置
| 配置项 | 默认值 | 说明 |
|:-------|:-------|:-----|
| `SpriteOnFoot` | `1` | 步行玩家图标 |
| `SpriteVehicle` | `227` | 载具玩家图标 |
| `SpriteHelicopter` | `64` | 直升机玩家图标 |

### 🚨 警灯闪烁
| 配置项 | 类型 | 默认值 | 说明 |
|:-------|:-----|:-------|:-----|
| `SirenFlash` | boolean | `true` | 警灯开启时是否红蓝闪烁 |
| `SirenFlashInterval` | int | `500` | 闪烁间隔（毫秒） |

### 💬 指令与提示
| 配置项 | 默认值 | 说明 |
|:-------|:-------|:-----|
| `Command` | `"blips"` | 切换指令名称 |
| `MsgNotPolice` | `"..."` | 非警察用户提示信息 |
| `MsgTurnedOff` | `"..."` | 关闭 Blips 提示信息 |
| `MsgTurnedOn` | `"..."` | 开启 Blips 提示信息 |

---

## 🎮 使用指令

| 指令 | 权限 | 效果 |
|:-----|:-----|:-----|
| `/blips on` | 👮 仅警察 | 向其他警察显示自己的位置标记 |
| `/blips off` | 👮 仅警察 | 向其他警察隐藏自己的位置标记 |

---

## 📁 文件结构

```
TEAR-blips/
├── 📄 fxmanifest.lua      # 资源清单文件
├── ⚙️  config.lua           # 配置文件
├── 💻 client.lua           # 客户端脚本
├── 🖥️  server.lua           # 服务端脚本
├── 📖 README.md            # 英文文档
└── 📖 README_zh.md         # 中文文档
```

---

## 🏆 作者信息

| 角色 | 名称 |
|:-----|:-----|
| **作者** | [TEARLESSVVOID](https://github.com/dghjfd) |
| **版本** | 1.1.3 |
| **框架** | FiveM / ESX / QBCore |

---

## 📝 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

---

<div align="center">

**由 TEARLESSVVOID 用 ❤️ 制作**

[⭐ 给项目加星](https://github.com/dghjfd/TEAR-blips) • [🐛 报告问题](https://github.com/dghjfd/TEAR-blips/issues) • [💡 请求功能](https://github.com/dghjfd/TEAR-blips/issues)

</div>
