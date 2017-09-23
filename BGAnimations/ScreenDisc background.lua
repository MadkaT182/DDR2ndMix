return Def.ActorFrame {
	LoadActor( "logobg" )..{
		OnCommand=cmd(FullScreen);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.5);
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_BOTTOM-140;zoomto,608,160;diffusecolor,color("#000000");diffusealpha,.5);
	};
	LoadActor("help")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_BOTTOM-140);
		OffCommand=cmd(diffusealpha,0);
	};
}