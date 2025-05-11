local downloader = {}

function downloader.downloadScript(url)
    local success, result = pcall(function()
        return game:GetService("HttpService"):GetAsync(url)
    end)
    
    if success then
        return result  -- คืนค่าสคริปต์ที่ดาวน์โหลด
    else
        return nil  -- ถ้าดาวน์โหลดไม่สำเร็จ
    end
end

return downloader
