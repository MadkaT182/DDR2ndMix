return Def.ActorFrame{
	LoadActor("group")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-186);
	};
	LoadActor("song_frame")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-59);
	};
	LoadActor("steps")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+71);
	};
	LoadActor("go")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+154);
	};
};