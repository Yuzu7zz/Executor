local ui = {}

function ui.createUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = "Run Script"
    button.Parent = screenGui
    
    button.MouseButton1Click:Connect(function()
        -- เรียกใช้งานฟังก์ชันสำหรับดาวน์โหลดและรันสคริปต์
        local scriptUrl = "https://raw.githubusercontent.com/Yuzu7zz/Executor/main/myscript.lua"
        local script = downloader.downloadScript(scriptUrl)
        
        if script then
            loadstring(script)()  -- รันสคริปต์ที่ดาวน์โหลดมา
        else
            warn("ไม่สามารถดาวน์โหลดสคริปต์ได้")
        end
    end)
end

return ui
