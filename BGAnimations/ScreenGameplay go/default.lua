local t = Def.ActorFrame {
	StartTransitioningCommand=function(self)
		local test = SCREENMAN:GetTopScreen():GetChild("SongBackground"):GetChild("")
    	local BGBrightness = test:GetChild("")[5]:GetChild("BrightnessOverlay")
    	for i=1,3 do
        	BGBrightness[i]:finishtweening():linear(0.4):diffuse(Color.White)
    	end
	end;
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "go" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-2;diffusealpha,0;diffusealpha,1;sleep,.8;linear,.067;diffusealpha,0);
	};
};

return t