-- TEAR-blips 配置文件（独立插件，自动检测职业）

Config = {}

-- ==================== 框架 ====================
-- "esx" 或 "qbcore"
Config.Framework = "esx"

-- ==================== 职业（警察） ====================
-- 只要玩家职业名在此列表中即视为警察，可显示/使用 Blips
Config.PoliceJobs = {
    "police",
    "sheriff",
    "bcso",
    "sahp",
    "usmc",
    "safr",
}

-- ==================== 地图可见范围 ====================
-- false = 全图可见（无限范围，整张地图都能看到 blip）
-- true  = 仅近距离可见（靠近雷达范围才显示，推荐开启以优化视觉效果）
Config.BlipShortRange = true

-- ==================== 性能优化（动态刷新频率） ====================
Config.RadarRange = 250.0            -- 雷达范围（米）。在此范围内视为“近距离”，高频更新。
Config.FarUpdateInterval = 2000      -- 远距离更新间隔（毫秒）。超出雷达范围后降低更新频率以节省性能。
Config.UpdateInterval = 500          -- 近距离更新间隔（毫秒）。

-- ==================== Blip 样式 ====================
Config.BlipColor = 3                    -- 统一颜色，3=蓝 1=红 30=黄（见 FiveM blip 文档）
Config.BlipScale = 1.0
Config.BlipCategory = 2                -- 2=图例显示距离
Config.BlipShowCone = false           -- 关闭前方白色扇形区域（不要扇形）
Config.BlipHeadingIndicator = true    -- 显示 blip 上的黑色/深色朝向箭头
Config.BlipDisplay = 6

-- 图标（水滴/三角造型）
Config.SpriteOnFoot = 1
Config.SpriteVehicle = 227
Config.SpriteHelicopter = 64

-- 警灯开启时是否闪烁（红蓝交替）
Config.SirenFlash = true
Config.SirenFlashInterval = 500        -- 毫秒

-- ==================== 载具类型 ====================
Config.VehicleClassHelicopter = 15
Config.VehicleClassEmergency = 18      -- 紧急车辆（警车等）

-- ==================== 刷新与检测 ====================

Config.JobCheckInterval = 2000         -- 职业检测缓存间隔（毫秒）
Config.FrameworkCheckInterval = 1000  -- 框架加载检测间隔（毫秒）

-- ==================== 命令与提示 ====================
Config.Command = "blips"
Config.MsgNotPolice = "只有警察职业才能使用此命令！"
Config.MsgAlreadyOff = "Blips已经关闭了！"
Config.MsgAlreadyOn = "Blips已经开启了！"
Config.MsgTurnedOff = "Blips已关闭！其他玩家将看不到你的位置标记。"
Config.MsgTurnedOn = "Blips已开启！其他玩家现在可以看到你的位置标记。"
Config.MsgInvalidArg = "无效参数！请使用 /blips on 或 /blips off"
