local t = Def.ActorFrame {};

-- LUA Based LifeMeter bar (by MadkaT)
for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			Name="LifeMeter Frame";
			InitCommand=cmd(y,SCREEN_TOP+24;valign,0);
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-183):zoomx(1) else self:x(SCREEN_CENTER_X+183):zoomx(-1) end end;
			LifeChangedMessageCommand=function(self,params)
				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 17 / 41)) * 10
					if pills == 41 then self:glowshift():effectperiod(0.1):effectcolor1(1,1,1,0.4):effectcolor2(1,1,1,0) else self:stopeffect() end
				end;
			end;
		};
	};
end;

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	for i = 1,41 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+39;diffusealpha,0.35);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-310+6*i) else self:x(SCREEN_CENTER_X+310-6*i) end end;
			OnCommand=function(self)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 41x1.png")
				self:pause()
				self:setstate(-1 + i)
			end;
		};
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+39;);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-312+6*i) else self:x(SCREEN_CENTER_X+310-6*i) end end;
			OnCommand=function(self)
				self:sleep(i / 20)
				--self:queuecommand("Anim")
			end;
			AnimCommand=function(self)
				self:sleep(0.6)
				self:accelerate(0.075)
				self:addy(-8)
				self:accelerate(0.075)
				self:addy(8)
				self:queuecommand("Anim")
			end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 41x1.png")
				self:pause()

				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 17 / 41)) * 10
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
					if pills == 41 then self:glowshift():effectperiod(0.1):effectcolor1(1,1,1,0.4):effectcolor2(1,1,1,0) else self:stopeffect() end
				end;
			end;
		};
	end
end

return t;