local stages = Def.ActorFrame {
};

for _, s in ipairs(Stage) do
		stages[#stages+1] = LoadFont("_system3") .. {
			SetCommand=function(self, params)
				self:visible( params.StageToShow == s );
				if params.StageNumber then
					self:horizalign(right);
					self:x(-58);
					self:settext( thified_curstage_index() );
				end
			end;
		}

	--Suffix
	stages[#stages+1] = LoadFont("_system2") .. {
		SetCommand=function(self, params)
			self:visible( params.StageToShow == s );
			if params.StageNumber then
				self:settext("STAGE");
			end
		end;
	}
end

return stages;
