local stages = Def.ActorFrame {
};

for _, s in ipairs(Stage) do
	-- if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 then
	-- 	stages[#stages+1] = LoadFont("_system3") .. {
	-- 		SetCommand=function(self, params)
	-- 			self:visible( GAMESTATE:GetCurrentStage() == "Stage_Final" );
	-- 			if params.StageNumber then
	-- 				self:horizalign(right);
	-- 				self:x(-58);
	-- 				self:settext("FINAL");
	-- 			end
	-- 		end;
	-- 	}
	-- elseif s == 'Stage_Extra1' or s == 'Stage_Extra2' or s == 'Stage_Nonstop' or s == 'Stage_Oni' or s == 'Stage_Endless' or s == 'Stage_Demo' then
	-- 	stages[#stages+1] = LoadFont("_system3") .. {
	-- 		SetCommand=function(self, params)
	-- 			self:visible( params.StageToShow == s );
	-- 				self:horizalign(right);
	-- 				self:x(-58);
	-- 				self:settext("EXTRA");
	-- 		end;
	-- 	}
	-- else
	-- 	stages[#stages+1] = LoadFont("_system3") .. {
	-- 		SetCommand=function(self, params)
	-- 			self:visible( params.StageToShow == s );
	-- 			if params.StageNumber then
	-- 				self:horizalign(right);
	-- 				self:x(-58);
	-- 				self:settext( FormatNumberAndSuffix(params.StageNumber+1) );
	-- 			end
	-- 		end;
	-- 	}
	-- end

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
