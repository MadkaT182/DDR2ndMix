return Def.ActorFrame {
	LoadActor("ScreenSelectMusic background/bg")..{
		OnCommand=cmd(FullScreen);
	};
}