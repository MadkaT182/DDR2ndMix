return Def.ActorFrame {
	-- Def.Quad{
	-- 	OnCommand=cmd(FullScreen;diffuse,color("#000000"));
	-- };
	LoadFont("_system4")..{
		Text="PlayStation STAFF";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+92;diffusealpha,0;sleep,1.034;linear,.537;diffusealpha,1;sleep,1.839;linear,.271;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,3.745;linear,.201;diffusealpha,1;sleep,1.872;linear,.234;diffusealpha,0);
		LoadFont("_system2")..{
			Text="DIRECTOR";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Hirotaka Ishikawa";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadFont("_system2")..{
		Text="PROGRAMMER";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,5.849;linear,.201;diffusealpha,1;sleep,4.314;linear,.234;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,5.849;linear,.201;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Akinori";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-134;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Tamura";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-68;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Yasumi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Takase";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+244;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,8.257;linear,.201;diffusealpha,1;sleep,1.906;linear,.234;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Nishibori";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-134;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Taquashi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-38;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="K. Nagaoka";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+234;y,SCREEN_CENTER_Y+110);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,10.598;linear,.267;diffusealpha,1;sleep,1.906;linear,.268;diffusealpha,0);
		LoadFont("_system2")..{
			Text="DESIGNER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Yoshiko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-118;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Wada";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-84;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Yumi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+156;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Yoshida";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+236;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,13.039;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="SOUND DESIGNER AND COMPOSER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="U1-ASAMI";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,15.447;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="SOUND PROGRAMMER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Tomokazu Koizumi";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,17.855;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="GUITARIST";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="AQUI LA JAMAOCA";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,20.296;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="RECORDING ENGINEER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Nobuhiko Matsufuji";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,22.703;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="PRODUCT DESIGNER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Muroi Ai";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,25.111;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="PROMOTION";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Yoshiko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-118;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Yagi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-84;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Yoko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+132;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Sekiguchi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+260;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,27.518;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="PRODUCER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Masaki Yoneoka";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,29.925;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="GRAND PRODUCER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Makoto Yano";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadFont("_system4")..{
		Text="ARCADE ORIGINAL STAFF";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+92;diffusealpha,0;sleep,32.063;linear,.537;diffusealpha,1;sleep,1.839;linear,.271;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,34.741;linear,.201;diffusealpha,1;sleep,1.872;linear,.234;diffusealpha,0);
		LoadFont("_system2")..{
			Text="DIRECTOR";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Kazuya Takahashi";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadFont("_system2")..{
		Text="PROGRAMMER";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,37.148;linear,.234;diffusealpha,1;sleep,4.334;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,37.148;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Yusuke";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-158;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Kitakaze";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-60;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Tadashi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+170;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Kitagawa";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,39.556;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Yoshihiko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-118;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Narita";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-54;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Takahiro";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+194;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Ohashi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+260;y,SCREEN_CENTER_Y+148);
		};
	};
	LoadFont("_system2")..{
		Text="DESIGNER";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,41.964;linear,.234;diffusealpha,1;sleep,6.772;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,41.964;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Eiichi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-158;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Yoshioka";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-60;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Yukiko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Mizoo";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+236;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,44.371;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Tomohiro";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-102;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Ota";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-86;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Takashi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+170;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Inubushi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,46.779;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Akira";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-148;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Iizumi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-84;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Kanako";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+164;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Yonezawa";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+260;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,49.187;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_system2")..{
			Text="SOUND";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Naoki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-142;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Maeda";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-94;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Hideaki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Shikama";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+260;y,SCREEN_CENTER_Y+148);
		};
	};
	LoadFont("_system2")..{
		Text="MECHANICAL DESIGNER";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,51.594;linear,.234;diffusealpha,1;sleep,4.314;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,51.594;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Toyozou";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-118;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Maki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-86;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Yoshiyuki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Ishikawa";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+282;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,54;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Yoshinobu Kitami";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadFont("_system2")..{
		Text="PRODUCT DESIGNER";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,61.225;linear,.234;diffusealpha,1;sleep,4.347;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,61.225;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Takashi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-158;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Nishimura";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-46;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Masayuki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Uematsu";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,63.633;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Kenji";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-166;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Fujinaka";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-68;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Hideaki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+186;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Minoda";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+252;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,66;linear,.201;diffusealpha,1;sleep,1.872;linear,.234;diffusealpha,0);
		LoadFont("_system2")..{
			Text="PRODUCER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Yoshihiko Ota";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,68.448;linear,.201;diffusealpha,1;sleep,1.872;linear,.234;diffusealpha,0);
		LoadFont("_system2")..{
			Text="GRAND PRODUCER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Fumiaki Tanaka";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,70.856;linear,.201;diffusealpha,1;sleep,1.872;linear,.234;diffusealpha,0);
		LoadFont("_system2")..{
			Text="BEMANI MANAGER";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
		};
		LoadFont("_difficulty")..{
			Text="Shigeru Fukutake";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadFont("_system2")..{
		Text="SPECIAL THANKS";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48;diffusealpha,0;sleep,73.263;linear,.234;diffusealpha,1;sleep,13.943;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,73.263;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Hiroyuki";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-126;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Kadoma";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-60;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Issey";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+170;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Nisawa";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+236;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,75.67;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Mariko";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Shimbori";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-60;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Atsushi";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+170;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Sekimoto";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+266;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,78.078;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Juri";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-156;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Sakuma";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X-92;y,SCREEN_CENTER_Y+148);
		};
		LoadFont("_difficulty")..{
			Text="Maria";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+170;y,SCREEN_CENTER_Y+110);
		};
		LoadFont("_difficulty")..{
			Text="Hazama";
			OnCommand=cmd(horizalign,right;x,SCREEN_CENTER_X+234;y,SCREEN_CENTER_Y+148);
		};
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,80.486;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Shigeki Yutani";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+128);
		};
	};
	LoadActor("intercord")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+12;y,SCREEN_CENTER_Y+140;diffusealpha,0;sleep,82.893;linear,.201;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(diffusealpha,0;sleep,85.301;linear,.234;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
		LoadFont("_difficulty")..{
			Text="Suichiro Murata";
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+82);
		};
		LoadActor("mega")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+143);
		};
	};
	LoadActor("kcet")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+90;diffusealpha,0;sleep,87.708;linear,.201;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
	};
	LoadActor("konami")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+4;y,SCREEN_CENTER_Y+90;diffusealpha,0;sleep,90.083;linear,.201;diffusealpha,1;sleep,1.906;linear,.201;diffusealpha,0);
	};
	LoadActor("copy")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+200;diffusealpha,0;sleep,87.708;linear,.201;diffusealpha,1);
	};
}