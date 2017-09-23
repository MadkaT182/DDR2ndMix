local t = Def.ActorFrame{};

if not GAMESTATE:IsCourseMode() then return t; end;

--White flash
t[#t+1] = Def.Quad {
	StartCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;decelerate,0.5;diffusealpha,1;);
	FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
};

return t;