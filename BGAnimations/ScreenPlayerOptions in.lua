return Def.ActorFrame {
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;addx,SCREEN_WIDTH/2;linear,.7;addx,-SCREEN_WIDTH);
	};
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;addx,-SCREEN_WIDTH/2;linear,.7;addx,SCREEN_WIDTH);
	};
	LoadActor("ScreenStageInformation decorations")..{
		OnCommand=cmd(linear,.1;diffusealpha,0);
	};
};