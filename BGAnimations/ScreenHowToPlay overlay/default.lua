return Def.ActorFrame {
	LoadActor("Title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;cropbottom,1;linear,.367;cropbottom,0;addy,-72;sleep,1.235;linear,.367;cropbottom,1;addy,72);
	};
	LoadActor("Howtoplay")..{
		OnCommand=cmd(diffusealpha,0;sleep,2.002;diffusealpha,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-197;sleep,6.84;linear,.401;addx,-128;);
	};
	LoadActor("Game")..{
		OnCommand=cmd(diffusealpha,0;sleep,2.212;diffusealpha,1;x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-32;cropbottom,1;linear,.7;cropbottom,0;addy,-56;sleep,2.737;linear,.3;cropbottom,1;addy,56);
	};
	LoadActor("life")..{};
	LoadActor("hand-red")..{
		OnCommand=cmd(diffusealpha,0;sleep,10.878;diffusealpha,1;x,SCREEN_CENTER_X+118;y,SCREEN_CENTER_Y-58;sleep,1.301;diffusealpha,0);
	};
	LoadActor("tapmessage")..{
		OnCommand=cmd(diffusealpha,0;sleep,10.878;diffusealpha,1;x,SCREEN_CENTER_X+161;y,SCREEN_CENTER_Y+89;sleep,1.301;diffusealpha,0);
	};
	LoadActor("hand-red")..{
		OnCommand=cmd(diffusealpha,0;sleep,15.215;diffusealpha,1;x,SCREEN_CENTER_X+247;y,SCREEN_CENTER_Y-58;sleep,1.301;diffusealpha,0);
	};
	LoadActor("tapmessage")..{
		OnCommand=cmd(diffusealpha,0;sleep,15.215;diffusealpha,1;x,SCREEN_CENTER_X+161;y,SCREEN_CENTER_Y+89;sleep,1.301;diffusealpha,0);
	};
	LoadActor("hand-red")..{
		OnCommand=cmd(diffusealpha,0;sleep,19.553;diffusealpha,1;x,SCREEN_CENTER_X+182;y,SCREEN_CENTER_Y-58;sleep,1.268;diffusealpha,0);
	};
	LoadActor("tapmessage")..{
		OnCommand=cmd(diffusealpha,0;sleep,19.553;diffusealpha,1;x,SCREEN_CENTER_X+161;y,SCREEN_CENTER_Y+89;sleep,1.301;diffusealpha,0);
	};
	LoadActor("hand-green")..{
		OnCommand=cmd(diffusealpha,0;sleep,23.891;diffusealpha,1;x,SCREEN_CENTER_X+176;y,SCREEN_CENTER_Y-69;sleep,1.301;diffusealpha,0);
	};
	LoadActor( "jumpmessage" )..{
		OnCommand=cmd(diffusealpha,0;sleep,23.891;diffusealpha,1;x,SCREEN_CENTER_X+161;y,SCREEN_CENTER_Y+70;sleep,1.301;diffusealpha,0);
	};
	LoadActor("hand-yellow")..{
		OnCommand=cmd(diffusealpha,0;sleep,28.228;diffusealpha,1;x,SCREEN_CENTER_X+224;y,SCREEN_CENTER_Y-126;sleep,2.303;diffusealpha,0);
	};
	LoadActor( "missmessage" )..{
		OnCommand=cmd(diffusealpha,0;sleep,28.228;diffusealpha,1;x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+74;sleep,2.303;diffusealpha,0);
	};
}