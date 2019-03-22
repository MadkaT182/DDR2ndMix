local t = Def.ActorFrame {};
local sides = GAMESTATE:GetNumSidesJoined();
local difP1 = "";
local difP2 = "";
local customP1 = false;
local customP2 = false;

if GAMESTATE:IsSideJoined(PLAYER_1) then
	difP1 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty());
end;

if GAMESTATE:IsSideJoined(PLAYER_2) then
	difP2 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty());
end;

if difP1 == "EDIT" then
	difP1 = "["..GAMESTATE:GetCurrentSteps(PLAYER_1):GetDescription().."]";
	customP1 = true;
end

if difP2 == "EDIT" then
	difP2 = "["..GAMESTATE:GetCurrentSteps(PLAYER_2):GetDescription().."]";
	customP2 = true;
end

--Difficulty
if sides then
	if sides == 1 then
		t[#t+1] = Def.ActorFrame {
			LoadFont("_difficulty")..{
			InitCommand=cmd(addy,-72);
				OnCommand=function(self)
					if string.len(difP1) > 0 then
						self:settext(difP1);
					else
						self:settext(difP2);
					end;
					if customP1 or customP2 then
						self:diffusecolor(color("#F9DD33"));
					end
				end;
			};
		};
	else
		--Both sides
		if difP1 == difP2 then
			t[#t+1] = Def.ActorFrame {
				LoadFont("_difficulty")..{
				InitCommand=cmd(addy,-72);
					OnCommand=function(self)
					self:settext(difP1);
					if customP1 or customP2 then
						self:diffusecolor(color("#F9DD33"));
					end
					end;
				};
			};
		else
			t[#t+1] = Def.ActorFrame {
				LoadFont("_difficulty")..{
				InitCommand=cmd(addy,-86;addx,-94);
					OnCommand=function(self)
					self:horizalign(right);
					self:settext(difP1);
					if customP1 then
						self:diffusecolor(color("#F9DD33"));
					end
					end;
				};
				LoadFont("_difficulty")..{
				InitCommand=cmd(addy,-86;addx,98);
					OnCommand=function(self)
					self:horizalign(left);
					self:settext(difP2);
					if customP2 then
						self:diffusecolor(color("#F9DD33"));
					end
					end;
				};
			};
		end;
	end;
end;

return t;