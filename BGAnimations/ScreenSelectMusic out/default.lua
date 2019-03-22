return Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;linear,.3;addx,SCREEN_WIDTH/2;sleep,.6);
	};
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;linear,.3;addx,-SCREEN_WIDTH/2;sleep,.6);
	};
	LoadActor("../close")..{
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("nfocd")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-128;linear,.267;y,SCREEN_CENTER_Y+82);
	};
	LoadActor("../ScreenSelectMusic decorations/bnrframe")..{
		OnCommand=cmd(zoomx,1.07;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-93;diffusealpha,.5);
	};
	LoadActor("nfobanner")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-91);
	};
	LoadFont("_system2")..{
		Text=GMode;
		OnCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-162;horizalign,left;draworder,1;diffuse,color(GetModeColor()));
	};
	LoadActor("../norm_stage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_CENTER_Y-162);
	};
	LoadActor("../ScreenSelectMusic decorations/diff")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+153);
	};
	LoadActor("../ScreenSelectMusic decorations/title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+122;y,SCREEN_CENTER_Y+25);
	};
};