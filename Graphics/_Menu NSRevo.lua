local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+53;y,SCREEN_CENTER_Y-28;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("NON STOP REVOLUTION");
		end;
	};
};

return t;