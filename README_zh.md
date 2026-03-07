**中文** | [English](README.md)

---

# TEAR-blips

FiveM 资源：**仅警察可见的地图 Blip**。根据职业自动为警察玩家显示地图标记（支持 ESX / QBCore），警察可用指令开关自己的 Blip；图标与颜色随状态变化（步行、载具、直升机、警灯开/关）。

---

## 功能

- **框架**：支持 ESX 或 QBCore，自动检测并读取职业列表中的「警察」职业。
- **Blip 状态**：**步行**、**载具**、**直升机** 使用不同图标；**警灯开启时红蓝闪烁**。
- **开关**：警察使用 **`/blips on`** 或 **`/blips off`** 向其他警察显示或隐藏自己的位置。
- **性能**：可设短距离显示、按距离调整刷新间隔。
- **可配置**：颜色、图标、范围、间隔、指令名及所有提示语均在 `config.lua` 中配置。

---

## 依赖

- **FiveM** 服务器
- **ESX** 或 **QBCore**（或设为 `Framework = "custom"`，仅通过 config 中的警察职业名判断）
- **Lua 5.4**

---

## 安装

1. 将 **`TEAR-blips`** 文件夹放入 `resources` 目录。**请勿重命名**该文件夹（脚本会校验资源名）。
2. 在 `server.cfg` 中加入：
   ```cfg
   ensure TEAR-blips
   ```
3. 编辑 **`config.lua`**：将 `Config.Framework` 设为 `"esx"` 或 `"qbcore"`，并在 `Config.PoliceJobs` 中填入你的警察职业名称。

---

## 配置说明

所有配置项均在 **`config.lua`** 中。

| 分类 | 配置项 | 说明 |
|------|--------|------|
| **框架** | `Framework` | `"esx"` 或 `"qbcore"` |
| **警察职业** | `PoliceJobs` | 视为警察的职业名称列表 |
| **范围** | `BlipShortRange` | `true` = 仅雷达范围内显示；`false` = 全图显示 |
| **性能** | `RadarRange`、`UpdateInterval`、`FarUpdateInterval` | 雷达范围（米）及远近更新间隔（毫秒） |
| **Blip 样式** | `BlipColor`、`BlipScale`、`BlipDisplay` 等 | 颜色、大小、分类、朝向箭头、扇形等 |
| **图标** | `SpriteOnFoot`、`SpriteVehicle`、`SpriteHelicopter` | 步行/载具/直升机对应的 Blip 图标 |
| **警灯** | `SirenFlash`、`SirenFlashInterval` | 警灯开启时是否红蓝闪烁及间隔 |
| **指令** | `Command` | 指令名（默认 `blips`） |
| **提示语** | `MsgNotPolice`、`MsgTurnedOff` 等 | 指令相关游戏内提示文字 |

---

## 指令

| 指令 | 使用对象 | 效果 |
|------|----------|------|
| **`/blips on`** | 仅警察 | 向其他警察显示自己的 Blip |
| **`/blips off`** | 仅警察 | 向其他警察隐藏自己的 Blip |

非警察使用会收到可配置的「仅警察可用」类提示。

---

## 文件结构

```
TEAR-blips/
├── fxmanifest.lua
├── config.lua
├── client.lua
├── server.lua
├── README.md
└── README_zh.md
```

---

## 作者与版本

- **作者：** TEARLESSVVOID（TEAR-blips）
- **版本：** 1.0.5

---

## 许可证

见本仓库 [LICENSE](LICENSE)。
