local t = Def.ActorFrame {
	LoadActor( "start" )..{
		OnCommand=cmd(diffusealpha,.5);
	};
	LoadActor( "start" )..{
		OnCommand=cmd(diffusealpha,1;sleep,.5;queuecommand,"Anim");
		AnimCommand=cmd(diffusealpha,0;sleep,.5;queuecommand,"On");
	};
};
return t;