return Def.ActorFrame{
	LoadActor("md")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-260;y,65;zoom,2;diffuse,.4,.4,.9,.8;blend,"BlendMode_Add");
	};
	LoadFont("_system2")..{
		InitCommand=cmd(settext,"1P";player,PLAYER_1;x,SCREEN_CENTER_X-260;y,116;diffuse,color("#8AB5FE"));
	};
	LoadActor("fd")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+260;y,65;zoom,2;diffuse,1,.4,.8,.8;blend,"BlendMode_Add");
	};
	LoadFont("_system2")..{
		InitCommand=cmd(settext,"2P";player,PLAYER_2;x,SCREEN_CENTER_X+266;y,116;diffuse,color("#FF969F"));
	};
};