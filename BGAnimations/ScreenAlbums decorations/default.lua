return Def.ActorFrame {
	LoadActor("tile")..{
		OnCommand=cmd(Center);
	};
	LoadActor("music")..{
		OnCommand=cmd(Center;sleep,2.168;linear,1.035;diffusealpha,0);
	};
	LoadActor("megamix")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,10.31;diffusealpha,1);
	};
	LoadActor("ultimate")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,15.348;diffusealpha,1);
	};
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,color("#FFFFFF");diffusealpha,0;sleep,9.242;linear,1.068;diffusealpha,1;linear,1.034;diffusealpha,0;sleep,3.037;linear,.967;diffusealpha,1;linear,1;diffusealpha,0);
	};
};