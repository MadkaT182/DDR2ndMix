local gc = Var("GameCommand");
local t = Def.ActorFrame {};

local PlayModes = {
	-- easy
	["Easy"] = {
		xpos = -199,
		ypos = -96,
		stageamm = 1,
	},
	-- normal
	["Norm"] = {
		xpos = 0,
		ypos = -96,
		stageamm = 3,
	},
	-- hard
	["Hard"] = {
		xpos = 201,
		ypos = -96,
		stageamm = 5,
	},
}

t[#t+1] = Def.ActorFrame {

	InitCommand=function(self)
		self:Center()
		self:addx( PlayModes[gc:GetName()].xpos ):addy( PlayModes[gc:GetName()].ypos )
	end;
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_mode/bg")..{
		GainFocusCommand=cmd(stoptweening;decelerate,.15;y,0;zoom,1);
		LoseFocusCommand=cmd(stoptweening;decelerate,.15;y,2;zoom,.7485);
	};

	LoadActor("_mode/fg")..{
		OnCommand=function(self)
			self:heartbeat():effecttiming( 0,0.05,0.05,0.2 )
		end;
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;decelerate,.15;y,0;zoom,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0;decelerate,.15;y,2;zoom,.7485);
	};

	LoadActor("_mode/lbl_"..gc:GetName())..{
		GainFocusCommand=cmd(stoptweening;decelerate,.15;y,-10;zoom,1;rainbow);
		LoseFocusCommand=cmd(stoptweening;decelerate,.15;y,2;zoom,.61;stopeffect;diffuse,1,1,1,1);
	};
	LoadFont("_style")..{
		OnCommand=function(self)
		self:settext( PlayModes[gc:GetName()].stageamm );
		self:horizalign("right");
		self:y(56);
		self:x(-24);
		end;
		GainFocusCommand=cmd(stoptweening;decelerate,.15;x,-52;zoom,1);
		LoseFocusCommand=cmd(stoptweening;decelerate,.15;x,-24;zoom,.5);
	};
	LoadFont("_system2")..{
		OnCommand=function(self)
			self:settext( gc:GetName() == "Easy" and "STAGE" or "STAGES" );
			self:horizalign("left");
			self:y(58);
			self:x(-21);
		end;
		GainFocusCommand=cmd(stoptweening;decelerate,.15;x,-45;y,58;zoom,1);
		LoseFocusCommand=cmd(stoptweening;decelerate,.15;x,-21;y,58;zoom,.5);
	};
	Def.Quad{
		GainFocusCommand=function(self)
			GMode=gc:GetName() == "Norm" and "Normal" or gc:GetName()
		end
	};
};

t[#t+1] = Def.ActorFrame{
	LoadActor("_mode/desc_"..gc:GetName())..{
		OnCommand=cmd(y,SCREEN_CENTER_Y+20;x,SCREEN_CENTER_X);
		GainFocusCommand=cmd(diffusealpha,1;diffuse,color("#00D25D"));
		LoseFocusCommand=cmd(diffusealpha,0);
	};
}

return t