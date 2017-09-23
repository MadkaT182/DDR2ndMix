return Def.ActorFrame {
	--Title
	LoadFont("_maintit")..{
	InitCommand=cmd(x,SCREEN_WIDTH/2-18;y,SCREEN_TOP+40);
		OnCommand=function(self)
		self:settext("BEST RANKING");
		end;
	};
}