local URLs = {
    "https://raw.githubusercontent.com/OURZQ/UWS/refs/heads/main/UltimateWaypointSystem",
    "https://raw.githubusercontent.com/OURZQ/ATT/refs/heads/main/AutoTotem", 
    "",
    "",
    "",
    "",
    "",
    "",
    ""
}

print(" Loading " .. #URLs .. " scripts...")

for i, url in ipairs(URLs) do
    local scriptName = url:match("/([^/]+)%.lua$") or "Script " .. i
    print("📥 [" .. i .. "/" .. #URLs .. "] Loading: " .. scriptName)
    
    local success, result = pcall(function()
        local code = game:HttpGet(url, true)
        return loadstring(code)
    end)
    
    if success and result then
        local execSuccess, execError = pcall(result)
        if execSuccess then
            print("✅ " .. scriptName .. " executed successfully")
        else
            warn("⚠️ " .. scriptName .. " execution error: " .. execError)
        end
    else
        warn("Failed to load: " .. scriptName)
    end
end

print("All scripts loaded")
