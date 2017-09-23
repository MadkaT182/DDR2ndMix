local t = Def.ActorFrame {};
local style = GAMESTATE:GetCurrentStyle();

if style then
	st = style:GetName();
	local stTxt = "SINGLE";

	if st == "versus" then
		stTxt = "VERSUS";
		elseif st == "couple" then
				stTxt = "COUPLE";
			elseif st == "double" then
				stTxt = "DOUBLE";
			--Unison?
			--Battle?
	end;

	t[#t+1] = Def.ActorFrame {
		LoadFont("_style")..{
		InitCommand=cmd(addy,-40);
			OnCommand=function(self)
			self:settext(stTxt);
			end;
		};
	};

end;

return t;