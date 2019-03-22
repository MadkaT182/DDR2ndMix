local listDiff ={"Difficulty_Easy", "Difficulty_Medium", "Difficulty_Hard"};
local dIdx = 1;
local dMax = #listDiff;
local t = Def.ActorFrame{};
GAMESTATE:SetCurrentStyle("single");

function setDifficulty(diff)
	for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
		GAMESTATE:SetPreferredDifficulty(pn,listDiff[diff])
	end
end

t[#t+1] = Def.ActorFrame {
	CodeMessageCommand = function(self, params)
		if params.Name == 'Harder' or params.Name == 'Easier' then
			if params.Name == 'Harder' then
				if dIdx < dMax then
					dIdx = dIdx + 1;
					self:playcommand("Harder");
					setDifficulty(dIdx);
					self:playcommand("Refresh");
				end
			elseif params.Name == 'Easier' then
				if dIdx > 1 then
					self:playcommand("Easier");
					dIdx = 1;
					setDifficulty(dIdx);
					self:playcommand("Refresh");
				end
			end
		end
	end;
	LoadActor("left")..{
		OnCommand=cmd(stop);
		MenuLeftP1MessageCommand=cmd(stop;sleep,0;play);
		MenuLeftP2MessageCommand=cmd(stop;sleep,0;play);
		EasierCommand=cmd(stop;sleep,0;play);
	};
	LoadActor("right")..{
		OnCommand=cmd(stop);
		MenuRightP1MessageCommand=cmd(stop;sleep,0;play);
		MenuRightP2MessageCommand=cmd(stop;sleep,0;play);
		HarderCommand=cmd(stop;sleep,0;play);
	};
	LoadActor("help_another")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-144;y,SCREEN_CENTER_Y+154);
		RefreshCommand=function(self)
			if dIdx > 1 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("help_basic")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-144;y,SCREEN_CENTER_Y+154);
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("diff_higher")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+114;y,SCREEN_CENTER_Y+103;glowshift);
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:glowshift();
			else
				self:stopeffect();
			end
		end;
	};
	LoadActor("diff_lower")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+114;y,SCREEN_CENTER_Y+155);
		RefreshCommand=function(self)
			if dIdx > 1 then
				self:glowshift();
			else
				self:stopeffect();
			end
		end;
	};
	LoadActor("knob_up")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+9;y,SCREEN_CENTER_Y+131);
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("knob_medium")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+11;y,SCREEN_CENTER_Y+131;diffusealpha,0);
		RefreshCommand=function(self)
			if dIdx == 2 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("knob_low")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+9;y,SCREEN_CENTER_Y+131;diffusealpha,0);
		RefreshCommand=function(self)
			if dIdx == 3 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("lbl_basic")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+116;y,SCREEN_CENTER_Y+103;diffuse,color("#F8B100"));
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:diffusealpha(1);
			else
				self:diffusealpha(.25);
			end
		end;
	};
	LoadActor("lbl_another")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+119;y,SCREEN_CENTER_Y+155;diffuse,color("#F80000"));
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:diffusealpha(.25);
			elseif dIdx == 2 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
	};
	LoadActor("lbl_maniac")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+119;y,SCREEN_CENTER_Y+155;diffuse,color("#028457");diffusealpha,0);
		RefreshCommand=function(self)
			if dIdx == 1 then
				self:diffusealpha(0);
			elseif dIdx == 2 then
				self:diffusealpha(0);
			else
				self:diffusealpha(1);
			end
		end;
	};
	LoadFont("_style")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+8;y,SCREEN_CENTER_Y+196;horizalign,left);
		OnCommand=function(self)
			self:settext(GAMESTATE:GetNumPlayersEnabled() == 2 and "VERSUS" or "SINGLE");
		end;
		PlayerJoinedMessageCommand=function(self)
			self:settext(GAMESTATE:GetNumPlayersEnabled() == 2 and "VERSUS" or "SINGLE");
		end;
	};
	LoadActor(THEME:GetPathG("Common","MoveStart"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+60;diffuseblink;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.5);
	};
};

return t;