local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y+87);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+152;y,SCREEN_CENTER_Y+87;zoomx,-1);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y+87;diffusealpha,0);
		PreviousSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X-150;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+152;y,SCREEN_CENTER_Y+87;diffusealpha,0;zoomx,-1);
		NextSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X+152;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bnrframe" )..{
		OnCommand=cmd(zoomx,1.07;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-93;diffusealpha,.5);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "banner" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-91);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "tip" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-223;y,SCREEN_CENTER_Y+166;diffusealpha,.5;sleep,.5;queuecommand,"Anim");
		AnimCommand=cmd(diffusealpha,1;sleep,.5;queuecommand,"On");
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor( "../change" )..{
		OnCommand=cmd(stop);
		PreviousSongMessageCommand=cmd(stop;sleep,0;play);
		NextSongMessageCommand=cmd(stop;sleep,0;play);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_playmode" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;draworder,1);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../norm_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+143;y,SCREEN_CENTER_Y-162;draworder,1);
	}
};

return t