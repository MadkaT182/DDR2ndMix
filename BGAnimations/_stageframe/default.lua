local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system3")..{
			InitCommand=cmd(y,-20;playcommand,"Set");
			SetCommand=function(self)
			self:settext(thified_curstage_index());
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTraiP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTraiP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
	};

	t[#t+1] = Def.ActorFrame {
		LoadFont("_system2")..{
		InitCommand=cmd();
			OnCommand=function(self)
			self:settext("STAGE");
			end;
		};
	};
end;

return t;