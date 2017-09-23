local t = Def.ActorFrame {};

-- --Danger Filter
-- t[#t+1] = LoadActor("../ScreenGameplay Danger");

--lifebar placeholder
t[#t+1] = LoadActor("../_lifebar");

--Stage frame
t[#t+1] = LoadActor("../_stageFrame")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+44);
};

--Score frame
if not GAMESTATE:IsDemonstration() then
	t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")
end;

return t