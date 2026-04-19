-- TEAR-blips 配置文件（独立插件，自动检测职业）
-- TEAR-blips Configuration File (Standalone plugin, auto-detects jobs)

Config = {}

-- ==================== 框架 / Framework ====================
-- "esx" 或 "qbcore" / "esx" or "qbcore"
Config.Framework = "esx"

-- ==================== 职业（警察）/ Jobs (Police) ====================
-- 只要玩家职业名在此列表中即视为警察，可显示/使用 Blips
-- Players with job names in this list are considered police and can show/use Blips
Config.PoliceJobs = {
    "police",
    "sheriff",
    "bcso",
    "sahp",
    "usmc",
    "safr",
}

-- ==================== 地图可见范围 / Map Visibility Range ====================
-- false = 全图可见（无限范围，整张地图都能看到 blip）
-- true  = 仅近距离可见（靠近雷达范围才显示，推荐开启以优化视觉效果）
-- false = Full map visibility (unlimited range, blip visible on entire map)
-- true  = Short range only (only visible near radar range, recommended for better visuals)
Config.BlipShortRange = false

-- ==================== 性能优化（动态刷新频率）/ Performance Optimization (Dynamic Refresh Rate) ====================
Config.RadarRange = 250.0            -- 雷达范围（米）。在此范围内视为"近距离"，高频更新。/ Radar range (meters). Within this range is "close range", high-frequency updates.
Config.FarUpdateInterval = 2000      -- 远距离更新间隔（毫秒）。超出雷达范围后降低更新频率以节省性能。/ Long distance update interval (ms). Reduces update frequency beyond radar range to save performance.
Config.UpdateInterval = 500          -- 近距离更新间隔（毫秒）。/ Close range update interval (ms).

-- ==================== Blip 样式 / Blip Style ====================
Config.BlipColor = 3                    -- 统一颜色，3=蓝 1=红 30=黄（见 FiveM blip 文档）/ Unified color, 3=Blue 1=Red 30=Yellow (see FiveM blip docs)
Config.BlipScale = 1.0
Config.BlipCategory = 2                -- 2=图例显示距离 / 2=Legend shows distance
Config.BlipShowCone = false           -- 关闭前方白色扇形区域（不要扇形）/ Disable forward white cone area (no cone)
Config.BlipHeadingIndicator = true    -- 显示 blip 上的黑色/深色朝向箭头 / Show black/dark heading arrow on blip
Config.BlipDisplay = 4                -- 4 = 在地图和雷达上都显示（确保全图可见）/ 4 = Show on both map and radar (ensure full map visibility)

-- 图标（水滴/三角造型）/ Sprites (Drop/Triangle shapes)
Config.SpriteOnFoot = 1
Config.SpriteVehicle = 227
Config.SpriteHelicopter = 64

-- 警灯开启时是否闪烁（红蓝交替）/ Flash when siren is on (red/blue alternating)
Config.SirenFlash = true
Config.SirenFlashInterval = 500        -- 毫秒 / milliseconds

-- ==================== 载具类型 / Vehicle Classes ====================
Config.VehicleClassHelicopter = 15
Config.VehicleClassEmergency = 18      -- 紧急车辆（警车等）/ Emergency vehicles (police cars, etc.)

-- ==================== 刷新与检测 / Refresh & Detection ====================

Config.JobCheckInterval = 2000         -- 职业检测缓存间隔（毫秒）/ Job detection cache interval (ms)
Config.FrameworkCheckInterval = 1000  -- 框架加载检测间隔（毫秒）/ Framework load detection interval (ms)

-- ==================== 命令与提示 / Commands & Messages ====================
Config.Command = "blips"
Config.MsgNotPolice = "只有警察职业才能使用此命令！"
Config.MsgAlreadyOff = "Blips已经关闭了！"
Config.MsgAlreadyOn = "Blips已经开启了！"
Config.MsgTurnedOff = "Blips已关闭！其他玩家将看不到你的位置标记。"
Config.MsgTurnedOn = "Blips已开启！其他玩家现在可以看到你的位置标记。"
Config.MsgInvalidArg = "无效参数！请使用 /blips on 或 /blips off"
