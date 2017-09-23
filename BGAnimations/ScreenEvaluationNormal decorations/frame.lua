local t = Def.ActorFrame {};
local MarvEnabled = PREFSMAN:GetPreference("AllowW1");--Everywhere
local MFix = 34;

--Frame
if MarvEnabled == "AllowW1_Everywhere" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "bgm" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-32;);
		}
	};
--Marvelous--
	t[#t+1] = Def.ActorFrame {
		LoadActor( "marv" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+114;);
		}
	};
else
	Mfix = 0;
	t[#t+1] = Def.ActorFrame {
		LoadActor( "bgn" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-49;);
		}
	};
end

--Judgement
	t[#t+1] = Def.ActorFrame {
		LoadActor( "judge" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+172+MFix;);
		}
	};
--MaxCombo
	t[#t+1] = Def.ActorFrame {
		LoadActor( "maxcombo" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y+34+MFix;);
		}
	};
--Stage Labels
	t[#t+1] = Def.ActorFrame {
		LoadActor( "scorelbl" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-76);
		}
	};
return t;
