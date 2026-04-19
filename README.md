<div align="center">

![TEAR-blips Banner](https://img.shields.io/badge/TEAR--blips-v1.1.3-blue?style=for-the-badge&logo=github)
![FiveM](https://img.shields.io/badge/FiveM-Resource-f48024?style=for-the-badge&logo=gamejolt)
![Lua](https://img.shields.io/badge/Lua-5.4-2C2D72?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

# 🚔 TEAR-blips

**Police-Only Map Blips System for FiveM**

[Features](#-features) • [Installation](#-installation) • [Configuration](#-configuration) • [Commands](#-commands) • [Credits](#-credits)

[中文版](README_zh.md) | **English**

</div>

---

## 📖 About

TEAR-blips is a **standalone FiveM resource** that provides a professional police-only map blip system. Automatically detects police jobs and displays real-time position markers on the map for all police officers. Features dynamic icon changes based on player state (on foot, vehicle, helicopter) and red/blue flashing when siren is active.

---

## ✨ Features

| Feature | Description |
|:--------|:------------|
| 🎯 **Auto Detection** | Automatically detects ESX/QBCore framework and police jobs |
| 🗺️ **Full Map Visibility** | Blips visible across the entire map with configurable range |
| 🔄 **Dynamic States** | Different icons for walking, vehicle, helicopter, and emergency modes |
| 🚨 **Siren Flash** | Red/blue alternating flash effect when vehicle siren is on |
| ⚡ **Performance** | Distance-based update intervals for optimal server performance |
| 🎨 **Fully Configurable** | Customize colors, icons, range, intervals, and all messages |
| 🔒 **Police Only** | Command restricted to police jobs with configurable messages |

---

## 📦 Requirements

- **FiveM** Server
- **ESX** or **QBCore** Framework
- **Lua 5.4**

---

## 🚀 Installation

### Step 1: Download
```bash
git clone https://github.com/dghjfd/TEAR-blips.git
```

### Step 2: Install
1. Place the **`TEAR-blips`** folder in your server's `resources` directory
2. ⚠️ **Do not rename** the folder (resource name integrity check enabled)

### Step 3: Configure
Add to your `server.cfg`:
```cfg
ensure TEAR-blips
```

### Step 4: Setup
Edit **`config.lua`**:
- Set `Config.Framework` to `"esx"` or `"qbcore"`
- Add your police job names to `Config.PoliceJobs` array

---

## ⚙️ Configuration

All settings are located in **`config.lua`**.

### 🏗️ Framework Settings
| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `Framework` | string | `"esx"` | Framework to use: `"esx"` or `"qbcore"` |

### 👮 Police Jobs
| Option | Type | Description |
|:-------|:-----|:------------|
| `PoliceJobs` | array | List of job names that count as police |

**Default Police Jobs:**
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

### 🗺️ Map Visibility
| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `BlipShortRange` | boolean | `false` | `false` = Full map, `true` = Radar range only |

### ⚡ Performance
| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `RadarRange` | float | `250.0` | Distance (meters) for high-frequency updates |
| `UpdateInterval` | int | `500` | Update interval for nearby players (ms) |
| `FarUpdateInterval` | int | `2000` | Update interval for distant players (ms) |

### 🎨 Blip Style
| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `BlipColor` | int | `3` | Blip color: `1`=Red, `3`=Blue, `30`=Yellow |
| `BlipScale` | float | `1.0` | Blip size scale |
| `BlipDisplay` | int | `4` | Display mode: `4`=Map+Radar |
| `BlipCategory` | int | `2` | Blip category for legend |
| `BlipShowCone` | boolean | `false` | Show forward cone area |
| `BlipHeadingIndicator` | boolean | `true` | Show direction arrow on blip |

### 🎯 Sprites
| Option | Default | Description |
|:-------|:--------|:------------|
| `SpriteOnFoot` | `1` | Icon for walking player |
| `SpriteVehicle` | `227` | Icon for vehicle player |
| `SpriteHelicopter` | `64` | Icon for helicopter player |

### 🚨 Siren Flash
| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `SirenFlash` | boolean | `true` | Enable red/blue flash when siren on |
| `SirenFlashInterval` | int | `500` | Flash interval (milliseconds) |

### 💬 Commands & Messages
| Option | Default | Description |
|:-------|:--------|:------------|
| `Command` | `"blips"` | Toggle command name |
| `MsgNotPolice` | `"..."` | Message for non-police users |
| `MsgTurnedOff` | `"..."` | Message when blips disabled |
| `MsgTurnedOn` | `"..."` | Message when blips enabled |

---

## 🎮 Commands

| Command | Permission | Effect |
|:--------|:-----------|:-------|
| `/blips on` | 👮 Police Only | Show your blip to other police |
| `/blips off` | 👮 Police Only | Hide your blip from other police |

---

## 📁 File Structure

```
TEAR-blips/
├── 📄 fxmanifest.lua      # Resource manifest
├── ⚙️  config.lua           # Configuration file
├── 💻 client.lua           # Client-side script
├── 🖥️  server.lua           # Server-side script
├── 📖 README.md            # English documentation
└── 📖 README_zh.md         # Chinese documentation
```

---

## 🏆 Credits

| Role | Name |
|:-----|:-----|
| **Author** | [TEARLESSVVOID](https://github.com/dghjfd) |
| **Version** | 1.1.3 |
| **Framework** | FiveM / ESX / QBCore |

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with ❤️ by TEARLESSVVOID**

[⭐ Star this repo](https://github.com/dghjfd/TEAR-blips) • [🐛 Report Bug](https://github.com/dghjfd/TEAR-blips/issues) • [💡 Request Feature](https://github.com/dghjfd/TEAR-blips/issues)

</div>
