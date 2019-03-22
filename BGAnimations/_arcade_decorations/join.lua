return Def.ActorFrame {
	LoadActor(THEME:GetPathG("Common","PressStart"))..{
		OnCommand=cmd(diffuseblink;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.5);
	};
};