local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-25;y,SCREEN_CENTER_Y+32;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("INFORMATION");
		end;
	};
};

return t;