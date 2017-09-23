return Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "fg" )..{
		OnCommand=cmd(Center);
	};
	LoadActor( "lbl_time" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+222;y,SCREEN_CENTER_Y+188);
	};
};