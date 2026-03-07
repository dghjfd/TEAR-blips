**[中文版](README_zh.md)** | English

---

# TEAR-blips

FiveM resource: **police-only map blips**. Automatically shows blips for players with a police job (ESX / QBCore). Police can toggle their blip with a command; blip icon and color change by state (on foot, vehicle, helicopter, siren on/off).

---

## Features

- **Framework**: ESX or QBCore; auto-detects and uses your job list for “police”.
- **Blip states**: Different sprites for **on foot**, **vehicle**, **helicopter**; **red/blue flash** when siren is on.
- **Toggle**: Police use **`/blips on`** or **`/blips off`** to show or hide their position to other police.
- **Performance**: Short-range option, distance-based update intervals.
- **Configurable**: Colors, sprites, range, intervals, command name, and all messages in `config.lua`.

---

## Requirements

- **FiveM** server
- **ESX** or **QBCore** (or set `Framework = "custom"` and only police jobs from config will apply if you handle jobs yourself)
- **Lua 5.4**

---

## Installation

1. Put the **`TEAR-blips`** folder in your `resources` directory. **Do not rename** the folder (resource name is checked).
2. In `server.cfg`:
   ```cfg
   ensure TEAR-blips
   ```
3. Edit **`config.lua`**: set `Config.Framework` to `"esx"` or `"qbcore"`, and add your police job names to `Config.PoliceJobs`.

---

## Configuration

All options are in **`config.lua`**.

| Section | Options | Description |
|--------|----------|-------------|
| **Framework** | `Framework` | `"esx"` or `"qbcore"` |
| **Police jobs** | `PoliceJobs` | List of job names that count as police |
| **Range** | `BlipShortRange` | `true` = only show blips near radar range; `false` = show everywhere |
| **Performance** | `RadarRange`, `UpdateInterval`, `FarUpdateInterval` | Distance (m) and update intervals (ms) for blip updates |
| **Blip style** | `BlipColor`, `BlipScale`, `BlipDisplay`, etc. | Color, scale, category, heading arrow, cone |
| **Sprites** | `SpriteOnFoot`, `SpriteVehicle`, `SpriteHelicopter` | Blip icons for each state |
| **Siren** | `SirenFlash`, `SirenFlashInterval` | Red/blue flash when siren is on |
| **Command** | `Command` | Command name (default `blips`) |
| **Messages** | `MsgNotPolice`, `MsgTurnedOff`, etc. | In-game messages for the command |

---

## Commands

| Command | Who | Effect |
|---------|-----|--------|
| **`/blips on`** | Police only | Show your blip to other police |
| **`/blips off`** | Police only | Hide your blip |

Non-police get a configurable “police only” message.

---

## File Structure

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

## Credits

- **Author:** TEARLESSVVOID (TEAR-blips)
- **Version:** 1.0.5

---

## License

See [LICENSE](LICENSE) in this repository.
