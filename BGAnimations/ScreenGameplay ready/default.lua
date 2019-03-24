local t = Def.ActorFrame {
	OnCommand=function(self)
		local test = SCREENMAN:GetTopScreen():GetChild("SongBackground"):GetChild("")
    	local BGBrightness = test:GetChild("")[5]:GetChild("BrightnessOverlay")
    	for i=1,3 do
        	BGBrightness[i]:diffuse( color("0,0,0,0.8") ):sleep(20)
    	end
	end;
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "ready" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;sleep,5.334;diffusealpha,0;);
	};
};

return t;