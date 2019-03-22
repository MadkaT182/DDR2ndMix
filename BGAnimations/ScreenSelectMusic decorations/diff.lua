local t = Def.ActorFrame {};
local difficulty;

t[#t+1] = Def.ActorFrame {
	LoadFont("_diff_meter")..{
		InitCommand=function(self)
			self:y(-29);
			self:shadowlength(4);
			self:playcommand("Update");
			if MirrorOn then
				self:zoomy(-1);
			end
		end;
		UpdateCommand=function(self)
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song and steps ~= nil then
					local diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
					local meter = steps:GetMeter();
					local fixmeter = 0;
					if meter > 8 then
						fixmeter = 8;
						self:textglowmode('TextGlowMode_Inner');
						self:diffuseshift();
						self:effectcolor1(color(GetDifficultyColor(diff)));
						self:effectcolor2(.7,.7,.7,1);
					else
						fixmeter = meter;
						self:stopeffect();
					end
					self:settext(string.rep("0",fixmeter));
					self:diffuse(color(GetDifficultyColor(diff)));
				else
					self:settext("");
				end
			end;
		end;
	};
	LoadFont( "_system2" )..{
		InitCommand=cmd(y,9;shadowlength,4;playcommand,"Update");
		UpdateCommand=function(self)
			difficulty = 999;
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song then
					if song and steps ~= nil then
						diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
						difficulty = steps:GetMeter();
					end
				end
			end;
			self:settext(GetDifficultyName(difficulty));
			if difficulty > 8 then
				self:textglowmode('TextGlowMode_Inner');
				self:diffuseshift();
				self:effectcolor1(color(GetDiffLblColor(diff)));
				self:effectcolor2(.7,.7,.7,1);
			else
				self:diffuse(color(GetDiffLblColor(diff)));
				self:stopeffect();
			end
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
};

return t