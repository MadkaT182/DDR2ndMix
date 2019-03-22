function GetDDRCode(code)

local DDRCodes = {
	["PrevSteps1"] = "Up,Up",
	["PrevSteps2"] = "MenuUp,MenuUp",
	["NextSteps1"] = "Down,Down",
	["NextSteps2"] = "MenuDown,MenuDown",
	["NextSort1"] = "@MenuLeft-@MenuRight-Start",
	["NextSort2"] = "MenuLeft-MenuRight",
	["NextSort3"] = "@Left-@Right-Start",
	["NextSort4"] = "Left-Right",
	["ModeMenu1"] = "Up,Down,Up,Down",
	["ModeMenu2"] = "MenuUp,MenuDown,MenuUp,MenuDown",
	["CancelAll"] = "Left,Right,Left,Right,Left,Right,Left,Right",
	["NextGroup"] = "MenuUp,MenuRight,MenuRight",
	["PrevGroup"] = "MenuUp,MenuDown,MenuUp,MenuDown",
	["CloseCurrentFolder"] = "MenuUp-MenuDown",
	["SaveScreenshot1"] = "MenuLeft-MenuRight",
	["SaveScreenshot2"] = "Select",
	-- ["CancelAllPlayerOptions"] = "Left,Right,Left,Right,Left,Right",
	-- ["Left"] = "Left,Left,Left,Left,Left,Left,Left,Left",
	-- ["Right"] = "Right,Right,Right,Right,Right,Right,Right,Right",
}

local CodeCmd = DDRCodes[code] or "";

if not ThemePrefs.Get("EnableCodes") then
	CodeCmd = "";
end

return CodeCmd;
end