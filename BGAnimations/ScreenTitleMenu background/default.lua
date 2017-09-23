return Def.ActorFrame {
	--Logo
	LoadActor( "../logobg" )..{
		OnCommand=cmd(FullScreen);
	};
	--Filter
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.8);
	};
	--Title
	LoadFont("_maintit")..{
	InitCommand=cmd(addx,SCREEN_WIDTH/2;y,SCREEN_TOP+48);
		OnCommand=function(self)
		self:settext("MODE SELECTION");
		end;
	};
	LoadActor("titlehelp")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y+105;diffuseblink;effectperiod,.8;effectcolor1,.4,.4,.4,.5);
	};
	--Menu help
	LoadActor("menuhelp")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+170);
	};

}