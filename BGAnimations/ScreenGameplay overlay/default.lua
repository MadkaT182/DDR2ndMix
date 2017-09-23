local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame {
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;draworder,1);
		LoadActor( "../_playmode" )..{};
		LoadActor( "../_difficulty" )..{};
	};
end;

return t