return Def.ActorFrame {
	LoadActor( "Intro" )..{
		InitCommand=cmd(FullScreen);
	};
	LoadActor( "music" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,14.45;linear,.5;diffusealpha,1);
	};
}