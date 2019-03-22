local t = Def.ActorFrame {
	InitCommand=function(self) bn = self:GetChildren(); end;
	--Banner
	Def.Sprite{
		Name="NfoBanner";
		InitCommand=cmd(setsize,382,110;diffusealpha,0);
	};
	SetCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		local Path = THEME:GetPathG("Common","fallback banner");
		if song then
			Path = song:GetBannerPath();
			if not Path then
				Path = THEME:GetPathG("Common","fallback banner");
			end
			bn.NfoBanner:LoadBanner(Path);
			bn.NfoBanner:setsize(382,110);
			bn.NfoBanner:diffusealpha(1);
		end
	end;
	OnCommand=cmd(playcommand,"Set");
	StartTransitioningCommand=cmd(playcommand,"Set");
};

return t;