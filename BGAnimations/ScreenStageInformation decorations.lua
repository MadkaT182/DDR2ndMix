return Def.ActorFrame{
	LoadActor("ScreenSelectMusic out/nfocd")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+82);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadActor("ScreenSelectMusic decorations/bnrframe")..{
		OnCommand=cmd(zoomx,1.07;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-93;diffusealpha,.5);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadActor("ScreenSelectMusic out/nfobanner")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-91);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadFont("_system2")..{
		Text=GMode;
		OnCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-162;horizalign,left;draworder,1;diffuse,color(GetModeColor()));
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadActor("norm_stage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_CENTER_Y-162);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadActor("ScreenSelectMusic decorations/diff")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+153);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
	LoadActor("ScreenSelectMusic decorations/title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+122;y,SCREEN_CENTER_Y+25);
		OffCommand=cmd(sleep,.4;linear,.2;diffusealpha,0);
	};
}