local Scripts = {
    "https://raw.githubusercontent.com/OURZQ/UWS/refs/heads/main/UltimateWaypointSystem",
    "https://raw.githubusercontent.com/OURZQ/ATT/refs/heads/main/AutoTotem",
    "",
    ""
}

for _, url in ipairs(Scripts) do
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if not success then
        warn("Failed to load script: " .. errorMsg)
    end
end

print("✅ All scripts executed!")
