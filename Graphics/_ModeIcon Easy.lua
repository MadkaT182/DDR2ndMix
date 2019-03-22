local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	InitCommand=cmd(Center;addy,-96;addx,-199);
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_mode/bg")..{
		GainFocusCommand=cmd(stoptweening;linear,.25;y,0;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;y,2;zoom,.7485);
	};

	LoadActor("_mode/lbl_easy")..{
		GainFocusCommand=cmd(stoptweening;linear,.25;y,-10;zoom,1;rainbow);
		LoseFocusCommand=cmd(stoptweening;linear,.25;y,2;zoom,.61;stopeffect;diffuse,1,1,1,1);
	};
	LoadFont("_style")..{
		OnCommand=function(self)
		self:settext("1");
		self:horizalign("right");
		self:y(56);
		self:x(-57);
		end;
		GainFocusCommand=cmd(stoptweening;linear,.25;x,-52;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;x,-24;zoom,.5);
	};
	LoadFont("_system2")..{
		OnCommand=function(self)
			self:settext("STAGE");
			self:horizalign("left");
			self:y(58);
			self:x(-45);
		end;
		GainFocusCommand=cmd(stoptweening;linear,.25;x,-45;y,58;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;x,-21;y,78;zoom,.5);
	};
	LoadActor("_mode/desc_easy")..{
		OnCommand=cmd(y,116;x,198;diffuse,color("#00D25D");diffusealpha,0);
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	Def.Quad{
		GainFocusCommand=function(self)
			GMode="Easy";
		end
	};
};

return t;