return Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "mainframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,261);
	};
	LoadActor( "timeframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+261;y,418);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,30);
	};
}