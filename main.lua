local downloader = require(game:GetService("ReplicatedStorage"):WaitForChild("downloader"))
local ui = require(game:GetService("ReplicatedStorage"):WaitForChild("ui"))

local scriptUrl = "https://raw.githubusercontent.com/Yuzu7zz/Executor/main/myscript.lua"  -- URL ของสคริปต์ที่ต้องการดาวน์โหลด
local script = downloader.downloadScript(scriptUrl)

if script then
    loadstring(script)()  -- รันสคริปต์ที่ดาวน์โหลดมา
else
    warn("ไม่สามารถดาวน์โหลดสคริปต์ได้")
end
