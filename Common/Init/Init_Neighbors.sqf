/*
	Neighbors town per world.
*/

Private ["_index","_townMode"];
_index = 0;
for [{_i = 0},{_i < (count (missionConfigFile/"Params"))},{_i = _i + 1}]  do {if ((configName ((missionConfigFile >> "Params") select _i)) == "PARM_Gameplay_LocationLayout") exitWith {_index =_i}};
_townMode = if (isMultiplayer) then {paramsArray select _index} else {getNumber (missionConfigFile >> "Params" >> "PARM_Gameplay_LocationLayout" >> "default")};

switch (toLower(worldName)) do {
	case "chernarus": {
		switch (_townMode) do {
			case 4: {//--- Full.
				Kamenka setVariable ["neighbors", [Pavlovo, Komarovo]];
				Komarovo setVariable ["neighbors", [Pavlovo, Komarovo, Bor, Chernogorsk]];
				Chernogorsk setVariable ["neighbors", [Komarovo, Nadezhdino, Prigorodki, Kozlovka]];
				Prigorodki setVariable ["neighbors", [Chernogorsk, Elektrozavodsk]];
				Elektrozavodsk setVariable ["neighbors", [Prigorodki, Chernogorsk, Pusta, Kamyshovo, Staroye]];
				Kamyshovo setVariable ["neighbors", [Tulga, Elektrozavodsk]];
				Tulga setVariable ["neighbors", [Kamyshovo, Msta, Solnichniy]];
				Solnichniy setVariable ["neighbors", [Kamyshovo, Msta, Nizhnoye, Dolina]];
				Nizhnoye setVariable ["neighbors", [Solnichniy, Berezino]];
				Berezino setVariable ["neighbors", [Nizhnoye, Khelm, Orlovets, Dubrovka]];
				Khelm setVariable ["neighbors", [Berezino, Krasnostav]];
				Krasnostav setVariable ["neighbors", [Olsha, Gvozdno, Dubrovka, Khelm]];
				Olsha setVariable ["neighbors", [Krasnostav]];
				Gvozdno setVariable ["neighbors", [Krasnostav, Grishino]];
				Grishino setVariable ["neighbors", [Gvozdno, Petrovka, Kabanino]];
				Petrovka setVariable ["neighbors", [Grishino, Lopatino]];
				Lopatino setVariable ["neighbors", [Petrovka, Vybor, Pustoshka]];
				Myshkino setVariable ["neighbors", [Sosnovka, Pustoshka]];
				Sosnovka setVariable ["neighbors", [Zelenogorsk, Myshkino, Pustoshka]];
				Zelenogorsk setVariable ["neighbors", [Sosnovka, Pogorevka, Kozlovka, Pavlovo]];
				Pavlovo setVariable ["neighbors", [Kamenka, Komarovo, Bor, Zelenogorsk]];
				Bor setVariable ["neighbors", [Pavlovo, Kozlovka, Komarovo]];
				Kozlovka setVariable ["neighbors", [Bor, Zelenogorsk, Nadezhdino, Chernogorsk]];
				Nadezhdino setVariable ["neighbors", [Kozlovka, Chernogorsk]];
				Mogilevka setVariable ["neighbors", [Vyshnoye, Pusta]];
				Pusta setVariable ["neighbors", [Mogilevka, Elektrozavodsk]];
				Staroye setVariable ["neighbors", [Shakhovka, Guglovo, Elektrozavodsk, Msta]];
				Msta setVariable ["neighbors", [Staroye, Tulga, Solnichniy]];
				Dolina setVariable ["neighbors", [Staroye, Solnichniy, Solnichniy, Polana]];
				Orlovets setVariable ["neighbors", [Berezino, Polana]];
				Polana setVariable ["neighbors", [Orlovets, Polana, Dolina, Shakhovka, Gorka]];
				Gorka setVariable ["neighbors", [Dubrovka, NovySobor, Polana]];
				Dubrovka setVariable ["neighbors", [Gorka, Krasnostav, Berezino]];
				Shakhovka setVariable ["neighbors", [Staroye, Polana]];
				Guglovo setVariable ["neighbors", [Staroye, NovySobor]];
				NovySobor setVariable ["neighbors", [Guglovo, Gorka, StarySobor]];
				Vyshnoye setVariable ["neighbors", [StarySobor, Gorka]];
				StarySobor setVariable ["neighbors", [Vyshnoye, NovySobor, Kabanino, Pogorevka]];
				Pulkovo setVariable ["neighbors", [Pogorevka]];
				Pogorevka setVariable ["neighbors", [Pulkovo, Zelenogorsk, StarySobor]];
				Kabanino setVariable ["neighbors", [Vybor, Grishino, StarySobor]];
				Vybor setVariable ["neighbors", [Kabanino, Lopatino, Pustoshka]];
				Pustoshka setVariable ["neighbors", [Kabanino, Vybor, Myshkino]];
			};
			case 3: {//--- Large.
				Chernogorsk setVariable ["neighbors", [Komarovo, Nadezhdino, Elektrozavodsk]];
				Elektrozavodsk setVariable ["neighbors", [Chernogorsk, Pusta, Kamyshovo, Staroye]];
				Kamyshovo setVariable ["neighbors", [Solnichniy, Elektrozavodsk]];
				Solnichniy setVariable ["neighbors", [Kamyshovo, Dolina, Berezino]];
				Berezino setVariable ["neighbors", [Solnichniy, Dubrovka]];
				Krasnostav setVariable ["neighbors", [Gvozdno, Dubrovka]];
				Dubrovka setVariable ["neighbors", [Gorka, Krasnostav, Berezino]];
				Gorka setVariable ["neighbors", [Dubrovka, Polana, StarySobor]];
				Polana setVariable ["neighbors", [Gorka, Dolina]];
				Dolina setVariable ["neighbors", [Polana, Solnichniy, Staroye]];
				Staroye setVariable ["neighbors", [Elektrozavodsk, Dolina, Guglovo]];
				Pusta setVariable ["neighbors", [Elektrozavodsk, Mogilevka]];
				Guglovo setVariable ["neighbors", [Staroye, StarySobor]];
				Mogilevka setVariable ["neighbors", [Pusta, Vyshnoye, Nadezhdino]];
				Vyshnoye setVariable ["neighbors", [Mogilevka, StarySobor]];
				StarySobor setVariable ["neighbors", [Mogilevka, Kabanino, Gorka, Pogorevka, Guglovo]];
				Gvozdno setVariable ["neighbors", [Grishino, Krasnostav]];
				Grishino setVariable ["neighbors", [Kabanino, Petrovka, Gvozdno]];
				Kabanino setVariable ["neighbors", [StarySobor, Grishino, Vybor]];
				Petrovka setVariable ["neighbors", [Grishino, Lopatino]];
				Lopatino setVariable ["neighbors", [Vybor, Petrovka]];
				Vybor setVariable ["neighbors", [Lopatino, Myshkino, Kabanino]];
				Pogorevka setVariable ["neighbors", [StarySobor, Zelenogorsk]];
				Myshkino setVariable ["neighbors", [Zelenogorsk, Lopatino]];
				Nadezhdino setVariable ["neighbors", [Mogilevka, Chernogorsk]];
				Zelenogorsk setVariable ["neighbors", [Pogorevka, Myshkino, Pavlovo]];
				Pavlovo setVariable ["neighbors", [Zelenogorsk, Komarovo]];
				Komarovo setVariable ["neighbors", [Pavlovo, Chernogorsk]];
			};
			case 2: {//--- Medium.
				Chernogorsk setVariable ["neighbors", [Komarovo, Nadezhdino, Kozlovka, Mogilevka]];
				Mogilevka setVariable ["neighbors", [Vyshnoye, Nadezhdino]];
				Vyshnoye setVariable ["neighbors", [Mogilevka, StarySobor]];
				StarySobor setVariable ["neighbors", [Mogilevka, Kabanino, Pogorevka]];
				Grishino setVariable ["neighbors", [Kabanino]];
				Kabanino setVariable ["neighbors", [StarySobor, Grishino, Vybor]];
				Lopatino setVariable ["neighbors", [Vybor]];
				Vybor setVariable ["neighbors", [Lopatino, Pustoshka, Kabanino]];
				Myshkino setVariable ["neighbors", [Zelenogorsk, Pustoshka]];
				Nadezhdino setVariable ["neighbors", [Mogilevka, Chernogorsk]];
				Zelenogorsk setVariable ["neighbors", [Pogorevka, Myshkino, Pavlovo, Kozlovka]];
				Pavlovo setVariable ["neighbors", [Zelenogorsk, Komarovo, Kamenka]];
				Komarovo setVariable ["neighbors", [Pavlovo, Chernogorsk, Kamenka]];
				Kamenka setVariable ["neighbors", [Pavlovo, Komarovo]];
				Kozlovka setVariable ["neighbors", [Zelenogorsk, Nadezhdino, Chernogorsk]];
				Pustoshka setVariable ["neighbors", [Vybor, Myshkino]];
				Pogorevka setVariable ["neighbors", [StarySobor, Zelenogorsk]];
			};
			case 1: {//--- Small.
				Berezino setVariable ["neighbors", [Khelm, Orlovets, Dubrovka]];
				Orlovets setVariable ["neighbors", [Berezino, Polana]];
				Polana setVariable ["neighbors", [Gorka, Orlovets]];
				Gorka setVariable ["neighbors", [Dubrovka, Polana]];
				Dubrovka setVariable ["neighbors", [Gorka, Krasnostav, Berezino]];
				Khelm setVariable ["neighbors", [Berezino, Krasnostav]];
				Krasnostav setVariable ["neighbors", [Olsha, Gvozdno, Dubrovka, Khelm]];
				Olsha setVariable ["neighbors", [Krasnostav]];
				Gvozdno setVariable ["neighbors", [Krasnostav]];
			};
			case 0: {//--- Extra Small.
				Grishino setVariable ["neighbors", [Kabanino]];
				Kabanino setVariable ["neighbors", [Grishino, Vybor]];
				Vybor setVariable ["neighbors", [Kabanino, Lopatino, Pustoshka]];
				Pustoshka setVariable ["neighbors", [Vybor]];
				Lopatino setVariable ["neighbors", [Vybor]];
			};
		};	
	};
	case "takistan": {
		switch (_townMode) do {
			case 4: {//--- Full. Enjoy full Island TOWNS
				Landay setVariable ["neighbors", [ChakChak]];
				ChakChak setVariable ["neighbors", [Landay, Sakhee, Huzrutimam]];
				Huzrutimam setVariable ["neighbors", [ChakChak, Sultansafee]];
				Sultansafee setVariable ["neighbors", [Huzrutimam, AirportLYM]];
				LoyManara setVariable ["neighbors", [AirportLYM, Sultansafee, Jaza, Chardarakht, Timurkalay]];
				AirportLYM setVariable ["neighbors", [LoyManara, Sultansafee, Jaza]];
				Chardarakht setVariable ["neighbors", [LoyManara, HazarBagh, Jaza]];
				Jaza setVariable ["neighbors", [AirportLYM, LoyManara, Chardarakht]];
				HazarBagh setVariable ["neighbors", [Chardarakht]];
				Timurkalay setVariable ["neighbors", [LoyManara, Anar, Garmarud]];
				Garmarud setVariable ["neighbors", [Timurkalay, Garmsar, Imarat]];
				Garmsar setVariable ["neighbors", [Garmarud]];
				Imarat setVariable ["neighbors", [Garmarud, Zavarak, Bastam]];
				Zavarak setVariable ["neighbors", [Imarat, Karachinar, Ravanay]];
				Karachinar setVariable ["neighbors", [Zavarak]];
				Ravanay setVariable ["neighbors", [Zavarak]];
				Bastam setVariable ["neighbors", [Imarat, Falar, Rasman, Gospandi]];
				Rasman setVariable ["neighbors", [AirportRSM, Shamali, Bastam]];
				AirportRSM setVariable ["neighbors", [Rasman, Shamali]];
				Shamali setVariable ["neighbors", [AirportRSM, Rasman, Nagara]];
				Nagara setVariable ["neighbors", [Nur, Gospandi, Shamali]];
				Nur setVariable ["neighbors", [Nagara]];
				Gospandi setVariable ["neighbors", [Nagara, Bastam, Mulladoost]];
				Mulladoost setVariable ["neighbors", [Gospandi, Khushab]];
				Khushab setVariable ["neighbors", [Mulladoost, Jilavur, Shukurkalay]];
				Shukurkalay setVariable ["neighbors", [Khushab, Jilavur, Chaman]];
				Chaman setVariable ["neighbors", [Shukurkalay]];
				Jilavur setVariable ["neighbors", [Shukurkalay, Khushab, Sakhee, FeeruzAbad]];
				Sakhee setVariable ["neighbors", [Jilavur, ChakChak, FeeruzAbad, Kakaru]];
				Kakaru setVariable ["neighbors", [Sakhee, Anar, FeeruzAbad]];
				FeeruzAbad setVariable ["neighbors", [Jilavur, Anar, Kakaru, Falar, Sakhee]];
				Anar setVariable ["neighbors", [FeeruzAbad, Kakaru, Timurkalay, Falar]];
				Falar setVariable ["neighbors", [FeeruzAbad, Anar, Bastam]];
			};
			case 3: {//--- Large. Weekly Battle
				ChakChak setVariable ["neighbors", [Sakhee, Huzrutimam]];
				Huzrutimam setVariable ["neighbors", [ChakChak, Sultansafee]];
				Sultansafee setVariable ["neighbors", [Huzrutimam, AirportLYM]];
				LoyManara setVariable ["neighbors", [AirportLYM, Sultansafee, Jaza, Chardarakht, Timurkalay]];
				AirportLYM setVariable ["neighbors", [LoyManara, Sultansafee]];
				Chardarakht setVariable ["neighbors", [LoyManara,Jaza]];
				Jaza setVariable ["neighbors", [LoyManara, Chardarakht]];
				Timurkalay setVariable ["neighbors", [LoyManara, Anar, Garmarud]];
				Garmarud setVariable ["neighbors", [Timurkalay, Garmsar, Imarat]];
				Garmsar setVariable ["neighbors", [Garmarud]];
				Imarat setVariable ["neighbors", [Garmarud, Zavarak, Bastam]];
				Zavarak setVariable ["neighbors", [Imarat]];
				Bastam setVariable ["neighbors", [Imarat, Falar, Rasman, Gospandi]];
				Rasman setVariable ["neighbors", [AirportRSM, Bastam]];
				AirportRSM setVariable ["neighbors", [Rasman]];
				Nagara setVariable ["neighbors", [Gospandi]];
				Gospandi setVariable ["neighbors", [Nagara, Bastam, Mulladoost]];
				Mulladoost setVariable ["neighbors", [Gospandi, Khushab]];
				Khushab setVariable ["neighbors", [Mulladoost, Jilavur]];
				Jilavur setVariable ["neighbors", [Khushab, Sakhee, FeeruzAbad]];
				Sakhee setVariable ["neighbors", [Jilavur, ChakChak, FeeruzAbad, Kakaru]];
				Kakaru setVariable ["neighbors", [Sakhee, Anar, FeeruzAbad]];
				FeeruzAbad setVariable ["neighbors", [Jilavur, Anar, Kakaru, Falar, Sakhee]];
				Anar setVariable ["neighbors", [FeeruzAbad, Kakaru, Timurkalay, Falar]];
				Falar setVariable ["neighbors", [FeeruzAbad, Anar, Bastam]];
			};
			case 5: {//--- MISAK IDEA REvisited				
				Nur setVariable ["neighbors", [Nagara, Rasman]];
				Rasman setVariable ["neighbors", [Nur, Bastam, Zavarak]];
				Zavarak setVariable ["neighbors", [Imarat, Rasman]];
				Imarat setVariable ["neighbors", [Timurkalay,Garmsar, Zavarak, Bastam]];
				Bastam setVariable ["neighbors", [Imarat, Falar, Rasman, Nagara]];
				Nagara setVariable ["neighbors", [Nur, Khushab, Bastam]];
				//Gospandi setVariable ["neighbors", [Bastam, Nur, Khushab]];
				Falar setVariable ["neighbors", [FeeruzAbad, Anar, Bastam]];
				Garmsar setVariable ["neighbors", [Timurkalay, Imarat, Chardarakht]];
				Khushab setVariable ["neighbors", [Nagara, Chaman, Sakhee]];
				FeeruzAbad setVariable ["neighbors", [Sakhee, Anar, Falar]];
				Anar setVariable ["neighbors", [FeeruzAbad, Timurkalay, Falar]];
				Timurkalay setVariable ["neighbors", [LoyManara, Anar, Garmsar, Imarat]];
				LoyManara setVariable ["neighbors", [ChakChak, Chardarakht, Timurkalay]];
				Chaman setVariable ["neighbors", [Sakhee, Khushab]];
				Sakhee setVariable ["neighbors",[Chaman, Khushab, FeeruzAbad, ChakChak]];
				ChakChak setVariable ["neighbors", [Sakhee, LoyManara]];
				Chardarakht setVariable ["neighbors", [LoyManara, Garmsar]];				
			};
			case 2: {//--- Medium. Tournament
				// 1ChakChak setVariable ["neighbors", [Sakhee, Huzrutimam]];
				// 2Huzrutimam setVariable ["neighbors", [ChakChak, Sultansafee]];
				// 3Sultansafee setVariable ["neighbors", [Huzrutimam, LoyManara]];
				AirportLYM setVariable ["neighbors", [LoyManara]];
				LoyManara setVariable ["neighbors", [AirportLYM, Chardarakht, Timurkalay]];
				Chardarakht setVariable ["neighbors", [LoyManara]];
				//4 Jaza setVariable ["neighbors", [LoyManara, Chardarakht]];
				Timurkalay setVariable ["neighbors", [LoyManara, Anar, Garmarud]];
				Garmarud setVariable ["neighbors", [Timurkalay, Imarat]];
				//5 Garmsar setVariable ["neighbors", [Garmarud]];
				Imarat setVariable ["neighbors", [Garmarud, Bastam]];
				//6 Zavarak setVariable ["neighbors", [Imarat]];
				Bastam setVariable ["neighbors", [Imarat, Falar, Rasman, Gospandi]];
				Rasman setVariable ["neighbors", [AirportRSM, Bastam]];
				AirportRSM setVariable ["neighbors", [Rasman]];
				// 7Nagara setVariable ["neighbors", [Gospandi]];
				Gospandi setVariable ["neighbors", [Bastam, Mulladoost]];
				Mulladoost setVariable ["neighbors", [Gospandi, Jilavur]];
				// 8 Khushab setVariable ["neighbors", [Mulladoost, Jilavur]];
				Jilavur setVariable ["neighbors", [FeeruzAbad, Kakaru, Mulladoost]];
				// 9 Sakhee setVariable ["neighbors", [Jilavur, ChakChak, FeeruzAbad, Kakaru]];
				Kakaru setVariable ["neighbors", [Anar, FeeruzAbad, Jilavur]];
				FeeruzAbad setVariable ["neighbors", [Jilavur, Anar, Kakaru, Falar]];
				Anar setVariable ["neighbors", [FeeruzAbad, Kakaru, Timurkalay, Falar]];
				Falar setVariable ["neighbors", [FeeruzAbad, Anar, Bastam]];
			};
			case 1: {//--- BOB AAS 8
				// 1ChakChak setVariable ["neighbors", [Sakhee, Huzrutimam]];
				// 2Huzrutimam setVariable ["neighbors", [ChakChak, Sultansafee]];
				// 3Sultansafee setVariable ["neighbors", [Huzrutimam, LoyManara]];
				AirportLYM setVariable ["neighbors", [LoyManara]];
				LoyManara setVariable ["neighbors", [AirportLYM, Kakaru]];
				Kakaru setVariable ["neighbors", [FeeruzAbad, LoyManara]];
				FeeruzAbad setVariable ["neighbors", [Kakaru, Falar]];
				Falar setVariable ["neighbors", [FeeruzAbad, Bastam]];
				Bastam setVariable ["neighbors", [Falar, Rasman]];
				Rasman setVariable ["neighbors", [AirportRSM, Bastam]];
				AirportRSM setVariable ["neighbors", [Rasman]];
				// 7Nagara setVariable ["neighbors", [Gospandi]];
				//Gospandi setVariable ["neighbors", [Bastam, Mulladoost]];
				//Mulladoost setVariable ["neighbors", [Gospandi, Jilavur]];
				// 8 Khushab setVariable ["neighbors", [Mulladoost, Jilavur]];
				//Jilavur setVariable ["neighbors", [FeeruzAbad]];
				// 9 Sakhee setVariable ["neighbors", [Jilavur, ChakChak, FeeruzAbad, Kakaru]];
				//Anar setVariable ["neighbors", [FeeruzAbad, Kakaru, Timurkalay, Falar]];
				
			};
			case 0: {//--- Berserk Airport
				LoyManara setVariable ["neighbors", [Anar,FeeruzAbad]];
				Anar setVariable ["neighbors", [LoyManara,FeeruzAbad]];
				FeeruzAbad setVariable ["neighbors", [Anar,Rasman]];
				Rasman setVariable ["neighbors", [FeeruzAbad,Anar]];
			};
		};
	};
	case "zargabad": {
	if (_townMode == 4) then {//--- Full Version
		GasStation setVariable ["neighbors", [Shahbaz, Yarum, Qeslaq]];
		Qeslaq setVariable ["neighbors", [Shahbaz, Zargabad]];
		Shahbaz setVariable ["neighbors", [Qeslaq, GasStation]];
		Yarum setVariable ["neighbors", [Zargabad, GasStation]];
		Zargabad setVariable ["neighbors", [Qeslaq, Yarum, Nango, Azizajt, HazarBagh, MafiaVilla]];
		MafiaVilla setVariable ["neighbors", [Zargabad, HazarBagh]];
		Azizajt setVariable ["neighbors", [Zargabad, Nango]];
		Nango setVariable ["neighbors", [Zargabad, Azizajt, HazarBagh]];
		HazarBagh setVariable ["neighbors", [Zargabad, Nango, MafiaVilla]];
			} else {
		Qeslaq setVariable ["neighbors", [Shahbaz, Zargabad]];
		Shahbaz setVariable ["neighbors", [Qeslaq, Yarum]];
		Yarum setVariable ["neighbors", [Zargabad, Shahbaz]];
		Zargabad setVariable ["neighbors", [Qeslaq, Yarum, Nango, Azizajt, HazarBagh]];
		Azizajt setVariable ["neighbors", [Zargabad, Nango]];
		Nango setVariable ["neighbors", [Zargabad, Azizajt, HazarBagh]];
		HazarBagh setVariable ["neighbors", [Zargabad, Nango]];	
			};
	};
	case "fallujah": {
	if (_townMode == 1) then {//--- Full Version
		AirportFJH setVariable ["neighbors", [Hotel, Sinai]];
		Sinai setVariable ["neighbors", [Nazal, AirportFJH, IndustrialPark,RadioEuphrate]];
		Hotel setVariable ["neighbors", [AirportFJH, Askari, FOB]];
		IndustrialPark setVariable ["neighbors", [Sinai, Askari,Fallujah]];
		Nazal setVariable ["neighbors", [Sinai, RadioEuphrate, Fallujah, JolanPark]];
		RadioEuphrate setVariable ["neighbors", [Sinai, Nazal]];
		Askari setVariable ["neighbors", [Hotel, IndustrialPark,Fallujah,Shurta]];
		Fallujah setVariable ["neighbors", [IndustrialPark, Askari, Shurta, JolanPark, Nazal]];
		Shurta setVariable ["neighbors", [FOB, Fallujah, Askari, TrainStation]];
		FOB setVariable ["neighbors", [Hotel, Shurta, TrainStation]];
		TrainStation setVariable ["neighbors", [FOB, JolanPark, Shurta, Refinery]];
		JolanPark setVariable ["neighbors", [TrainStation, Fallujah, Nazal, Hospital]];
		Hospital setVariable ["neighbors", [Refinery, JolanPark]];
		Refinery setVariable ["neighbors", [TrainStation, Hospital]];
			} else {
		
		Sinai setVariable ["neighbors", [Nazal, IndustrialPark, RadioEuphrate]];
		IndustrialPark setVariable ["neighbors", [Sinai, Askari,Fallujah]];
		Nazal setVariable ["neighbors", [Sinai, RadioEuphrate, Fallujah, JolanPark]];
		RadioEuphrate setVariable ["neighbors", [Sinai, Nazal]];
		Askari setVariable ["neighbors", [IndustrialPark,Fallujah,Shurta]];
		Fallujah setVariable ["neighbors", [IndustrialPark, Askari, Shurta, JolanPark, Nazal]];
		Shurta setVariable ["neighbors", [Fallujah, Askari, TrainStation]];
		FOB setVariable ["neighbors", [Shurta, TrainStation]];
		TrainStation setVariable ["neighbors", [JolanPark, Shurta]];
		JolanPark setVariable ["neighbors", [TrainStation, Fallujah, Nazal]];
		};
	};
	default {
		['WFBE_TOWNCONQUESTMODE', 0, true] Call SetNamespace;
	};
};

objnull setVariable ["neighbors",objnull];

