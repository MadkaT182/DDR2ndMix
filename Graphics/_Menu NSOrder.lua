local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-48;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("NON STOP ORDER");
		end;
	};
};

return t;