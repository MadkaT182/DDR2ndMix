local t = Def.ActorFrame {};

--Coin Information
t[#t+1] = LoadFont("_system1") .. {
	InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-108;);
	OnCommand=cmd(playcommand,"Refresh");
	CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
	CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
		local bReady = GAMESTATE:GetNumSidesJoined() > 0;
		local sText = ""

		if GAMESTATE:IsEventMode() then
			sText = "";
		else
	        if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
	          sText = "";
	        else
				if bCanPlay or bReady then
					sText = "";
				else
					sText = "INSERT COIN(S)";
				end
	        end
		end

		self:settext( sText );
		self:diffuseshift();
		self:effectcolor1(1,1,1,0);
		self:effectcolor2(1,1,1,1);
		self:effectperiod(0.5);
	end;
};

--Join Message
t[#t+1] = LoadActor("join")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-108;);
	OnCommand=cmd(playcommand,"Refresh");
	CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
	CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		if GAMESTATE:IsEventMode() then
			self:diffusealpha(1);
		else
	        if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
	          self:diffusealpha(1);
	        else
				if bCanPlay or bReady then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end
	        end
		end
	end
};

return t