local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-24;y,SCREEN_CENTER_Y+72;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("DISC CHANGE");
		end;
	};
};

return t;