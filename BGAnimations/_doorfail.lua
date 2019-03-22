return Def.ActorFrame {
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;croptop,.5;y,SCREEN_BOTTOM;linear,.25;addy,-SCREEN_HEIGHT/2);
	};
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropbottom,.5;y,SCREEN_TOP;linear,.25;addy,SCREEN_HEIGHT/2);
	};
	LoadActor("close")..{
		StartTransitioningCommand=cmd(play);
	};
};