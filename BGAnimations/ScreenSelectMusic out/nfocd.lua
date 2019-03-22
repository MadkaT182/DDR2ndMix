local cdovr = false;
local t = Def.ActorFrame {
	Def.ActorFrame{
		Name="CdMask";
		InitCommand=cmd();
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
		};
	};
	Def.Sprite{
		Name="Disc";
		OnCommand=cmd(ztest,true;);
		SetCommand=function(self)
			local Song = GAMESTATE:GetCurrentSong();
			if Song then
				discimg = GetThemeCD(Song:GetDisplayMainTitle());
				if discimg == "fallback" then
					--Create custom CD graphic
					--Verify jacket
					if Song:HasJacket() then
						self:LoadBackground(Song:GetJacketPath());
						self:setsize(256,256);
						self:ztest(true);
						cdovr = true;
						elseif Song:HasBackground() then
							--Verify BG
							self:LoadBackground(Song:GetBackgroundPath());
							self:setsize(256,256);
							self:ztest(true);
							cdovr = true;
						else
							--Fallback
							self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
							self:ztest(false);
							cdovr = false;
					end;
				else
					--Load CD from theme
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					self:ztest(false);
					cdovr = false;
				end;
			end;
		end;
	};
	Def.ActorFrame{
		Name="CdOver";
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{
		SetCommand=function(self)
			if cdovr then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end;
		end;
		};
	};
	OnCommand=cmd(playcommand,"Set");
	StartTransitioningCommand=cmd(playcommand,"Set");
};

return t;