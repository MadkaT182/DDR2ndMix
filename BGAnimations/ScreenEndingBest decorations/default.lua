local function hide(self)
	local bg = SCREENMAN:GetTopScreen():GetChild("SongBackground");
	local pn;
	if bg then
		bg:visible(false);
	end
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		SCREENMAN:GetTopScreen():GetChild("Player"..ToEnumShortString(player)):GetChild("Combo"):visible(false);
	end
end

return Def.ActorFrame {
	OnCommand=hide;
	Def.Quad{
		JudgmentMessageCommand=function(self,params)
			if params.Player then
				SCREENMAN:GetTopScreen():GetChild("Player"..ToEnumShortString(params.Player)):GetChild("Judgment"):visible(params.TapNoteScore ~= "TapNoteScore_Miss");
			end
		end;
	};
}