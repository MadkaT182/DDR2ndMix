return Def.ActorFrame {
	LoadActor( "../_doorfail" )..{};
	LoadActor( "failed" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,1.959);
	}	
};