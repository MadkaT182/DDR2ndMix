local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-55;y,SCREEN_CENTER_Y-108;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("ENDLESS");
		end;
	};
};

return t;