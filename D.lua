local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Creepy/main/UI.lua"))()
local window = library:CreateWindow("Haha")

local tab = window:CreateTab("Main")
local section = tab:CreateSection("Settings")

tab:AddToggle({
    Name = "Enable Feature",  -- 开关的标签
    Flag = "EnableFeature",   -- 开关的唯一标识符
    Default = false,          -- 开关的默认状态（可选）
    Callback = function(state)  -- 当开关状态改变时调用的函数
        if state then
            print("Feature enabled")
        else
            print("Feature disabled")
        end
    end
})

section:AddSlider({
    Name = "Adjust Value",
    Flag = "AdjustValue",
    Min = 0,
    Max = 100,
    Callback = function(value)
        print("Value adjusted to:", value)
    end
})
