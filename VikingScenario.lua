-- Viking Scenario piggyback for Lamarckian Environment
-- Place this in the VikingScenario/Scripts folder

-- Building/Units/Districts/Civics/Techs imports to save time

buildings = {
	"BUILDING_AIRPORT",
	"BUILDING_ALHAMBRA",
	"BUILDING_AMPHITHEATER",
	"BUILDING_ARENA",
	"BUILDING_ARMORY",
	"BUILDING_BANK",
	"BUILDING_BARRACKS",
	"BUILDING_BIG_BEN",
	"BUILDING_BOLSHOI_THEATRE",
	"BUILDING_BROADCAST_CENTER",
	"BUILDING_BROADWAY",
	"BUILDING_CASTLE",
	"BUILDING_CATHEDRAL",
	"BUILDING_CHICHEN_ITZA",
	"BUILDING_COLOSSEUM",
	"BUILDING_COLOSSUS",
	"BUILDING_CRISTO_REDENTOR",
	"BUILDING_DAR_E_MEHR",
	"BUILDING_EIFFEL_TOWER",
	"BUILDING_ELECTRONICS_FACTORY",
	"BUILDING_ESTADIO_DO_MARACANA",
	"BUILDING_FACTORY",
	"BUILDING_FILM_STUDIO",
	"BUILDING_FORBIDDEN_CITY",
	"BUILDING_GRANARY",
	"BUILDING_GREAT_LIBRARY",
	"BUILDING_GREAT_LIGHTHOUSE",
	"BUILDING_GREAT_ZIMBABWE",
	"BUILDING_GURDWARA",
	"BUILDING_HAGIA_SOPHIA",
	"BUILDING_HANGAR",
	"BUILDING_HANGING_GARDENS",
	"BUILDING_HERMITAGE",
	"BUILDING_HUEY_TEOCALLI",
	"BUILDING_LARGE_ROCKET",
	"BUILDING_LIBRARY",
	"BUILDING_LIGHTHOUSE",
	"BUILDING_MADRASA",
	"BUILDING_MAHABODHI_TEMPLE",
	"BUILDING_MARKET",
	"BUILDING_MEDIUM_ROCKET",
	"BUILDING_MEETING_HOUSE",
	"BUILDING_MILITARY_ACADEMY",
	"BUILDING_MONT_ST_MICHEL",
	"BUILDING_MONUMENT",
	"BUILDING_MOSQUE",
	"BUILDING_MUSEUM_ART",
	"BUILDING_MUSEUM_ARTIFACT",
	"BUILDING_ORACLE",
	"BUILDING_OXFORD_UNIVERSITY",
	"BUILDING_PAGODA",
	"BUILDING_PALACE",
	"BUILDING_PETRA",
	"BUILDING_POTALA_PALACE",
	"BUILDING_POWER_PLANT",
	"BUILDING_PYRAMIDS",
	"BUILDING_RESEARCH_LAB",
	"BUILDING_RUHR_VALLEY",
	"BUILDING_SEAPORT",
	"BUILDING_SEWER",
	"BUILDING_SHIPYARD",
	"BUILDING_SHRINE",
	"BUILDING_SMALL_ROCKET",
	"BUILDING_STABLE",
	"BUILDING_STADIUM",
	"BUILDING_STAR_FORT",
	"BUILDING_STAVE_CHURCH",
	"BUILDING_STOCK_EXCHANGE",
	"BUILDING_STONEHENGE",
	"BUILDING_STUPA",
	"BUILDING_SYDNEY_OPERA_HOUSE",
	"BUILDING_SYNAGOGUE",
	"BUILDING_TEMPLE",
	"BUILDING_TERRACOTTA_ARMY",
	"BUILDING_TLACHTLI",
	"BUILDING_UNIVERSITY",
	"BUILDING_VENETIAN_ARSENAL",
	"BUILDING_WALLS",
	"BUILDING_WAT",
	"BUILDING_WATER_MILL",
	"BUILDING_WORKSHOP",
	"BUILDING_ZOO"
};

units = {
	"UNIT_AIRCRAFT_CARRIER", 
	"UNIT_AMERICAN_P51", 
	"UNIT_AMERICAN_ROUGH_RIDER",
	"UNIT_ANTIAIR_GUN", 
	"UNIT_APOSTLE", 
	"UNIT_ARABIAN_MAMLUK",
	"UNIT_ARCHAEOLOGIST", 
	"UNIT_ARCHER",
	"UNIT_ARTILLERY",
	"UNIT_AT_CREW",
	"UNIT_BARBARIAN_HORSEMAN", 
	"UNIT_BARBARIAN_HORSE_ARCHER", 
	"UNIT_BARBARIAN_RAIDER", 
	"UNIT_BATTERING_RAM", 
	"UNIT_BATTLESHIP",
	"UNIT_BIPLANE", 
	"UNIT_BOMBARD", 
	"UNIT_BOMBER",
	"UNIT_BRAZILIAN_MINAS_GERAES", 
	"UNIT_BUILDER", 
	"UNIT_CARAVEL", 
	"UNIT_CATAPULT",
	"UNIT_CAVALRY", 
	"UNIT_CHINESE_CROUCHING_TIGER", 
	"UNIT_CROSSBOWMAN", 
	"UNIT_DESTROYER",
	"UNIT_EGYPTIAN_CHARIOT_ARCHER",
	"UNIT_ENGLISH_REDCOAT", 
	"UNIT_ENGLISH_SEADOG",
	"UNIT_FIELD_CANNON", 
	"UNIT_FIGHTER",
	"UNIT_FRENCH_GARDE_IMPERIALE",
	"UNIT_FRIGATE", 
	"UNIT_GALLEY", 
	"UNIT_GERMAN_UBOAT", 
	"UNIT_GREAT_ADMIRAL", 
	"UNIT_GREAT_ARTIST", 
	"UNIT_GREAT_ENGINEER", 
	"UNIT_GREAT_GENERAL", 
	"UNIT_GREAT_MERCHANT",
	"UNIT_GREAT_MUSICIAN", 
	"UNIT_GREAT_PROPHET", 
	"UNIT_GREAT_SCIENTIST", 
	"UNIT_GREAT_WRITER", 
	"UNIT_GREEK_HOPLITE", 
	"UNIT_GURU", 
	"UNIT_HEAVY_CHARIOT",
	"UNIT_HELICOPTER",
	"UNIT_HORSEMAN", 
	"UNIT_INDIAN_VARU",
	"UNIT_INFANTRY", 
	"UNIT_INQUISITOR", 
	"UNIT_IRONCLAD", 
	"UNIT_JAPANESE_SAMURAI", 
	"UNIT_JET_BOMBER", 
	"UNIT_JET_FIGHTER",
	"UNIT_KNIGHT",
	"UNIT_KONGO_SHIELD_BEARER", 
	"UNIT_MACHINE_GUN",
	"UNIT_MECHANIZED_INFANTRY", 
	"UNIT_MEDIC", 
	"UNIT_MILITARY_ENGINEER", 
	"UNIT_MISSILE_CRUISER",
	"UNIT_MISSIONARY", 
	"UNIT_MOBILE_SAM", 
	"UNIT_MODERN_ARMOR", 
	"UNIT_MODERN_AT", 
	"UNIT_MUSKETMAN", 
	"UNIT_NATURALIST", 
	"UNIT_NORWEGIAN_BERSERKER", 
	"UNIT_NORWEGIAN_LONGSHIP", 
	"UNIT_NUCLEAR_SUBMARINE", 
	"UNIT_OBSERVATION_BALLOON", 
	"UNIT_PIKEMAN", 
	"UNIT_PRIVATEER", 
	"UNIT_QUADRIREME", 
	"UNIT_RANGER", 
	"UNIT_ROCKET_ARTILLERY", 
	"UNIT_ROMAN_LEGION", 
	"UNIT_RUSSIAN_COSSACK", 
	"UNIT_SCOUT", 
	"UNIT_SCYTHIAN_HORSE_ARCHER",
	"UNIT_SETTLER", 
	"UNIT_SIEGE_TOWER",
	"UNIT_SLINGER", 
	"UNIT_SPANISH_CONQUISTADOR",
	"UNIT_SPEARMAN", 
	"UNIT_SPY",
	"UNIT_SUBMARINE", 
	"UNIT_SUMERIAN_WAR_CART",
	"UNIT_SWORDSMAN", 
	"UNIT_TANK",
	"UNIT_TRADER",
	"UNIT_WARRIOR",
	"UNIT_WARRIOR_MONK"
};

districts = {
	"DISTRICT_CITY_CENTER",
	"DISTRICT_CAMPUS",
	"DISTRICT_HOLY_SITE",
	"DISTRICT_ENCAMPMENT",
	"DISTRICT_COMMERCIAL_HUB",
	"DISTRICT_ENTERTAINMENT_COMPLEX",
	"DISTRICT_THEATER",
	"DISTRICT_HARBOR",
	"DISTRICT_AERODROME",
	"DISTRICT_INDUSTRIAL_ZONE",
	"DISTRICT_AQUEDUCT",
	"DISTRICT_NEIGHBORHOOD",
	"DISTRICT_SPACEPORT",
	"DISTRICT_WONDER",
	"DISTRICT_ACROPOLIS",
	"DISTRICT_BATH",
	"DISTRICT_HANSA",
	"DISTRICT_LAVRA",
	"DISTRICT_MBANZA",
	"DISTRICT_STREET_CARNIVAL",
	"DISTRICT_ROYAL_NAVY_DOCKYARD"
};

civics = {
	"CIVIC_DRAMA_POETRY",
	"CIVIC_MILITARY_TRAINING",
	"CIVIC_DEFENSIVE_TACTICS",
	"CIVIC_RECORDED_HISTORY",
	"CIVIC_THEOLOGY",
	"CIVIC_NAVAL_TRADITION",
	"CIVIC_FEUDALISM",
	"CIVIC_COLONIALISM",
	"CIVIC_CIVIL_SERVICE",
	"CIVIC_MERCENARIES",
	"CIVIC_MEDIEVAL_FAIRES",
	"CIVIC_GUILDS",
	"CIVIC_DIVINE_RIGHT",
	"CIVIC_EXPLORATION",
	"CIVIC_HUMANISM",
	"CIVIC_DIPLOMATIC_SERVICE",
	"CIVIC_REFORMED_CHURCH",
	"CIVIC_MERCANTILISM",
	"CIVIC_THE_ENLIGHTENMENT",
	"CIVIC_CIVIL_ENGINEERING",
	"CIVIC_NATIONALISM",
	"CIVIC_OPERA_BALLET",
	"CIVIC_NATURAL_HISTORY",
	"CIVIC_URBANIZATION",
	"CIVIC_SCORCHED_EARTH",
	"CIVIC_CONSERVATION",
	"CIVIC_MOBILIZATION",
	"CIVIC_MASS_MEDIA",
	"CIVIC_CAPITALISM",
	"CIVIC_NUCLEAR_PROGRAM",
	"CIVIC_SUFFRAGE",
	"CIVIC_TOTALITARIANISM",
	"CIVIC_CLASS_STRUGGLE",
	"CIVIC_COLD_WAR",
	"CIVIC_PROFESSIONAL_SPORTS",
	"CIVIC_CULTURAL_HERITAGE",
	"CIVIC_RAPID_DEPLOYMENT",
	"CIVIC_SPACE_RACE",
	"CIVIC_GLOBALIZATION",
	"CIVIC_SOCIAL_MEDIA"
};

techs = {
	"TECH_ADVANCED_BALLISTICS",
	"TECH_ADVANCED_FLIGHT",
	"TECH_ANIMAL_HUSBANDRY",
	"TECH_ARCHERY",
	"TECH_ASTROLOGY",
	"TECH_ASTRONOMY",
	"TECH_BALLISTICS",
	"TECH_BANKING",
	"TECH_BRONZE_WORKING",
	"TECH_CARTOGRAPHY",
	"TECH_CELESTIAL_NAVIGATION",
	"TECH_CHEMISTRY",
	"TECH_COMBINED_ARMS",
	"TECH_COMBUSTION",
	"TECH_COMPOSITES",
	"TECH_COMPUTERS",
	"TECH_CONSTRUCTION",
	"TECH_CURRENCY",
	"TECH_ECONOMICS",
	"TECH_EDUCATION",
	"TECH_ELECTRICITY",
	"TECH_ENGINEERING",
	"TECH_FLIGHT",
	"TECH_CASTLES",
	"TECH_FUTURE_TECH",
	"TECH_GUIDANCE_SYSTEMS",
	"TECH_GUNPOWDER",
	"TECH_HORSEBACK_RIDING",
	"TECH_INDUSTRIALIZATION",
	"TECH_IRON_WORKING",
	"TECH_IRRIGATION",
	"TECH_LASERS",
	"TECH_MACHINERY",
	"TECH_MASONRY",
	"TECH_MASS_PRODUCTION",
	"TECH_MATHEMATICS",
	"TECH_METAL_CASTING",
	"TECH_APPRENTICESHIP",
	"TECH_MILITARY_ENGINEERING",
	"TECH_STIRRUPS",
	"TECH_MILITARY_SCIENCE",
	"TECH_MILITARY_TACTICS",
	"TECH_MINING",
	"TECH_NANOTECHNOLOGY",
	"TECH_NUCLEAR_FISSION",
	"TECH_NUCLEAR_FUSION",
	"TECH_PLASTICS",
	"TECH_POTTERY",
	"TECH_PRINTING",
	"TECH_RADIO",
	"TECH_REPLACEABLE_PARTS",
	"TECH_RIFLING",
	"TECH_ROBOTICS",
	"TECH_ROCKETRY",
	"TECH_SAILING",
	"TECH_SANITATION",
	"TECH_SATELLITES",
	"TECH_SCIENTIFIC_THEORY",
	"TECH_SHIPBUILDING",
	"TECH_SIEGE_TACTICS",
	"TECH_SQUARE_RIGGING",
	"TECH_STEALTH_TECHNOLOGY",
	"TECH_STEAM_POWER",
	"TECH_STEEL",
	"TECH_SYNTHETIC_MATERIALS",
	"TECH_TELECOMMUNICATIONS",
	"TECH_THE_WHEEL",
	"TECH_WRITING"
};

-- Initialize (Required by game)
-- Populate some number of networks to be used as the initial population for
-- the evolution

function Initialize()
	os.execute("python initNetwork.py 0 5 12 4 0 3 .2 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 1 5 4 12 1 0 .3 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 2 5 6 6 1 2 .3 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 3 5 5 15 2 1 .4 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 4 5 3 12 0 0 .2 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 5 5 2 10 1 0 .3 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 6 5 10 5 1 2 .3 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 7 5 4 18 2 2 .4 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 8 5 10 5 1 2 .3 rmsprop sigmoid mse")
	os.execute("python initNetwork.py 9 5 4 8 2 3 .4 rmsprop sigmoid mse")
end

-- InitializeNewGame (Required by game)
-- Sets up the duel scenario where both of the AIs are aware of each other and
-- their capital locations. This does not guarantee war.

function InitializeNewGame()
    -- Confirm all players are not allies
    Game.GetGameDiplomacy():SetAlliesShareVisFlag(false);
    
    -- Make sure they are aware of each other
	Players[0]:GetDiplomacy():SetHasMet(1);
	Players[1]:GetDiplomacy():SetHasMet(0);
end

-- newMatch
-- Calls the newmatch function in the python code, which picks two networks
-- that have not yet had a chance to play (max score is 0)

local function newMatch()
    -- The following process is the fastest roundabout method of getting the
    -- output of the executed python code in lua, and is used in multiple 
    -- places in this file, and cannot be turned into a function, as the 
    -- current thread is the only one that is given access to the generated 
    -- temp file, and threads do not inheret the permissions of their
    -- respective subthreads

    -- Spawn a temporary file
    n = os.tmpname();

    -- Execute the code and push the output to the temp file
    os.execute("python newMatch.py >" .. n);

    -- Init a response table
    local match = {};

    -- Read through the temporary file
    for line in io.lines(n) do
        -- Save the lines to the response table
        match[#match + 1] = tonumber(line);
    end

    -- Delete the temp file
    os.remove(n);

    --Return the relevant data
    return {match[1], match[2]}
end

-- bestMatch
-- Cals the bestmatch function in the python code, which picks the two best
-- networks and returns them

local function bestMatch()
    n = os.tmpname();
    os.execute("python bestMatch.py >" .. n);
    local match = {};
    for line in io.lines(n) do
        match[#match + 1] = tonumber(line);
    end
    os.remove(n);
    return {match[1], match[2]}
end

-- pyMove
-- Makes a move through python, which includes loading the model, pushing the
-- input, and returning the output.

function pyMove(player, moveType, data, gameNo)
    n = os.tmpname();
    os.execute("python singleMove.py "..data[1]..","..data[2]..","..data[3]..","..data[4]..","..data[5].." "..moveType.." "..gameNo.." "..player.." >"..n);
    local match = {};
    for line in io.lines(n) do
        match[#match + 1] = tonumber(line);
	end
	os.remove(n);
	return match[1];
end

-- singleMove
-- Performs a single move in the game. This is the main gameplay loop in one 
-- function. The function loops until either it runs out of actions that need
-- to be addressed (EndTurnBlockingTypes.NO_ENDTURN_BLOCKING), or the timeout 
-- counter reaches 5 'broken' requests. Each valid action request is processed
-- individually, and with context-specific operations. All operations are done 
-- in the global context (_G)

function singleMove(player, localID, gameNo)
    -- Get the current action request, the local player, and set timeout to 0
    local currentAction = NotificationManager.GetFirstEndTurnBlocking(localID);
	local play = Players[localID];
    local timeout = 0;
    
    -- While the timeout counter hasn't broken, and the turn has blockers...
    while timeout < 5 and currentAction ~= EndTurnBlockingTypes.NO_ENDTURN_BLOCKING do
        -- If the city is under attack, autodefend. This is not something we 
        -- thoughtwas important to try and learn by force. See also 
        -- EndTurnBlockingTypes.ENDTURN_BLOCKING_DISTRICT_RANGE_ATTACK
        if currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_CITY_RANGE_ATTACK then
            -- Loop through all player cities and autoattack. This will not 
            -- do anything if the city is not under attack
			for i, v in ipairs(play:GetCities():Members()) do
				CityManager.RequestCommand(v, CityCommandTypes.RANGE_ATTACK);
            end
            
        -- If there is a civic to be chosen from the civics tree...
        elseif currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_CIVIC then
            -- Get the player culture, and init two tables for later
			local pCulture:table = play:GetCulture();
			local t = {};
            local moves = {};
            
            -- Loop through all of the civics...
            for c = 1, 48 do
                -- Grab that civic's info
                local tCivic = GameInfo.Civics[civics[c]];
                
                -- Only if the player does not have the civic but has the 
                -- prerequesites...
                if not pCulture:HasCivic(tCivic.Index) and pCulture:HasCivic(GameInfo.Civics[tCivic.PrereqCivic].Index) then
                    -- Grab the cost, culture cost, and culture yield, and send
                    -- to the civic network to be processed.
					local cCost = tCivic.Cost;
					if cCost == nil then cCost = 0 end
					local cCultureCost = pCulture:GetCultureCost();
                    local cCultureYield = pCulture:GetCultureYield();
                    
                    -- Insert the values acquired by the individual moves into 
                    -- the table t, and their index in civics into moves
					table.insert(t,pyMove(player, "civic", {c, cCost, cCultureCost, cCultureYield, play:GetScore()}, gameNo));
					table.insert(moves, c);
				end
			end

            -- Unfortunately, there is no good way to get a key value from a 
            -- value in a table, so I have flipped the table's keys and values
            -- into the indecies table, for lookup purposes

			local indecies = {};
			for k, v in pairs(t) do
				indecies[v] = k;
			end

            -- The decision is the index in the possible civics (moves) of the 
            -- best, most fit choice
            local decision = indecies[math.max(unpack(t))];

            -- Add the chosen civic to the queue for researching
			pCulture:GetCivicQueue():Add(GameInfo.Civics[civics[moves[decision]]]);

        -- If district is under attack, autodefend. See also 
        -- EndTurnBlockingTypes.ENDTURN_BLOCKING_CITY_RANGE_ATTACK
        elseif currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_DISTRICT_RANGE_ATTACK then
			for i, v in ipairs(play:GetCities():Members()) do
				for j, w in ipairs(v:GetDistricts()) do
					CityManager.RequestCommand(w, CityCommandTypes.RANGE_ATTACK);
				end
            end

        -- If production is requested at a given city, cycle through the units
        -- and buildings, generating the list of ones accessible to the current
        -- city, then get their score according to the two production networks,
        -- save the values, and then start building the desired. Very similar 
        -- to choosing civics
		elseif currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_PRODUCTION then
			local pCities:table = play:GetCities();
			for i=0,(pCities:GetCount() - 1) do
				local currentCity = pCities:FindID(i);
				if currentCity:GetBuildQueue():CurrentlyBuilding() == "NONE" then
					local currentPop = currentCity:GetPopulation();
					local t = {};
					local moves = {};
					for b = 1,82 do
						buildingInfo = GameInfo.Buildings[buildings[b]];
						if (buildingInfo) and not currentCity:GetBuildings():HasBuilding(buildingInfo.Index) then
							local bprereqBuilding = buildingInfo.PrereqBuilding;
							local bprereqCivic = buildingInfo.PrereqCivic;
							local bprereqDistrict = buildingInfo.PrereqDistrict;
							local bisWonder = tostring(buildingInfo.IsWonder);
							if bprereqBuilding == nil then
								bprereqBuilding = -1;
							else
								bprereqBuilding = GameInfo.Buildings[bprereqBuilding].Index;
							end
							if bprereqCivic == nil then
								bprereqCivic = -1;
							else
								bprereqCivic = GameInfo.Civics[bprereqCivic].Index;
							end
							if bprereqDistrict == nil then
								bprereqDistrict = -1;
							else
								bprereqDistrict = GameInfo.Districts[bprereqDistrict].Index;
							end
							if bisWonder == "true" then
								bisWonder = 1;
							else
								bisWonder = 0;
							end
							-- print(bisWonder.." "..bprereqBuilding.." "..bprereqCivic.." "..bprereqDistrict)
							if bisWonder == 0 and (bprereqBuilding == -1 or currentCity:GetBuildings():HasBuilding(bprereqBuilding)) and (bprereqCivic == -1 or play:GetCulture():HasCivic(bprereqCivic)) and (bprereqDistrict == -1 or currentCity:GetDistricts():HasDistrict(bprereqDistrict)) then
								local bCost = buildingInfo.Cost;
								local bMaintenance = buildingInfo.Maintenance;
								local bHousing = buildingInfo.Housing;
								if bHousing == nil then
									bHousing = 0;
								end
								local bEntertainment = buildingInfo.Entertainment;
								if bEntertainment == nil then
									bEntertainment = 0;
								end
								table.insert(t, pyMove(player, "buildingProduction", {b, bCost, bMaintenance, bHousing, bEntertainment}, gameNo))
								table.insert(moves, b)
								-- print(string.gsub(buildings[b], "BUILDING_", "") ..": "..bCost.." "..bMaintenance.." "..bCitizens.." "..bHousing.." "..bEntertainment);
							end
						end
					end
					for u = 1,95 do
						unitInfo = GameInfo.Units[units[b]];
						if (unitInfo) and not string.match(unitInfo.UnitType, "BARBARIAN") and not string.match(unitInfo.UnitType, "GREAT") and not string.match(unitInfo.FormationClass, "NAVAL") then
							local uprereqCivic = unitInfo.PrereqCivic;
							local upopCost = unitInfo.PopulationCost;
							local uprereqTech = unitInfo.PrereqTech;
							if uprereqCivic == nil then
								uprereqCivic = -1;
							else
								uprereqCivic = unitInfo.Index;
							end
							if upopCost == nil then
								upopCost = 0;
							else
								upopCost = tonumber(upopCost);
							end
							if uprereqTech == nil then
								uprereqTech = -1;
							else
								uprereqTech = GameInfo.Technologies[uprereqTech].Index;
							end
							if currentCity:GetPopulation() > upopCost and (uprereqCivic == -1 or play:GetCulture():HasCivic(uprereqCivic)) and (uprereqTech == -1 or play:GetTechs():HasTech(uprereqTech)) then
								local uCost = unitInfo.Cost;
								local uBaseMoves = unitInfo.BaseMoves;
								local uBaseRange = unitInfo.BaseSightRange;
								if uCost == nil then
									uCost = 0
								else
									uCost = tonumber(uCost);
								end
								if uBaseMoves == nil then
									uBaseMoves = 0
								else
									uBaseMoves = tonumber(uBaseMoves);
								end
								if uBaseRange == nil then
									uBaseRange = 0
								else
									uBaseRange = tonumber(uBaseRange);
								end
								-- print(string.gsub(units[b], "UNIT_", "") ..": "..uCost.." "..uBaseMoves.." "..uBaseRange);
								table.insert(t, pyMove(player, "unitProduction", {u, uCost, uBaseMoves, uBaseRange, upopCost}, gameNo))
								table.insert(moves, (100 + u))
							end
						end
					end
				end

                local indecies = {};
                for k, v in pairs(t) do
                    indecies[v] = k;
                end
    
                local decision = indecies[math.max(unpack(t))];
                if decision > 100 do 
                    currentCity:GetBuildQueue():Add(GameInfo.Units[units[moves[decision] - 100]]);
                else
                    currentCity:GetBuildQueue():Add(GameInfo.Buildings[buildings[moves[decision]]]);
                end
            end
            
        -- If research is requested, similarly to civics and production, the 
        -- network-knowledge-acquisition loop is enacted, but for technologies
        elseif currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_RESEARCH then
			local pTechs:table = play:GetTechs();
			local t = {};
			local moves = {};
			for e=1,68 do
				eTech = GameInfo.Technologies[techs[e]];
				if pTechs:CanResearch(eTech) then
					table.insert(t, pyMove(player, "tech", {e, eTech.Cost, pTechs:GetTurnsToResearch(eTech.Index),  pTechs:GetScienceYield(), [pTechs:GetResearchCost()]}, gameNo));
					table.insert(moves, e);
				end
			end

			local indecies = {};
			for k, v in pairs(t) do
				indecies[v] = k;
			end

			local decision = indecies[math.max(unpack(t))];
			pTechs:SetResearchingTech(GameInfo.Technologies[techs[moves[decision]]].Index);

        -- If a unit needs orders, we perform something similar to above, but
        -- we only push in data about the particular plot being considered, not
        -- the index of the plot, as it is not as important as the civic/tech/
        -- building ID of above actions, as there is not a discrete set of 
        -- plots to choose from, but rather a number of attributes
        elseif currentAction == EndTurnBlockingTypes.ENDTURN_BLOCKING_UNIT_NEEDS_ORDERS then
			local pUnit = play:GetUnits():Members();
			for k, v in pairs(pUnit) do
				local t = {};
				local moves = {};
				if v:GetMovesRemaining() > 0 then 
					local locations:table = UnitManager.GetReachableMovement(v:GetID());
					for l, w in pairs(locations) do
						tPlot = Map.GetPlot(w[1],w[2]);
						table.insert(t, pyMove(player, "move", {tPlot:GetResourceCount(), tPlot:GetYield(), tPlot:GetArea():GetImprovementCount(), tPlot:GetArea():getRiverEdgeCount(), tPlot:GetUnitCount()}, gameNo));
						table.insert(moves, l);
					end
					local indecies = {};
					for k, v in pairs(t) do
						indecies[v] = k;
					end
	
					local decision = indecies[math.max(unpack(t))];
					local location = locations[moves[decision]];
					UnitManager.RequestOperation(v:GetID(), UnitOperationTypes.MOVE_TO, location[1], location[2]);
				end
			end
        else
            print(currentAction);
			timeout = timeout + 1;
        end
        currentAction = NotificationManager.GetFirstEndTurnBlocking(localID);
    end
    
    -- End the turn by force when either timeout reached or no more blocking
    -- actions requested
	UI.RequestAction(ActionTypes.ACTION_ENDTURN);
end

-- singleGame
-- This function performs a single game between two nets, including the 
-- intergame training of the loser. Prints scores as well, out of firaxis
-- livetuner lua console

function singleGame(turnlimit, p1, p2, gameNo)
    -- Loop until turnlimit is reached
    for 1, turnlimit do
        -- Perform the moves of the two AIs in sequence
		singleMove(p1, 0, gameNo);
		singleMove(p2, 1, gameNo);
    end
    
    -- Get the final scores of the two players
	local p1score = Players[0]:GetScore();
    local p2score = Players[1]:GetScore();
    
    -- Perform the two teaching scenarios as needed, init retval
	if p1score > p2score then
		os.execute("python loserTrain.py "..p1.." "..p2.." "..gameNo);
		local retval = {p1, p2, p1score, p2score};
	else
		os.execute("python loserTrain.py "..p2.." "..p1.." "..gameNo);
		local retval = {p2, p1, p2score, p1score};
    end
    
    -- Print results
	print("Game "..gameNo);
	print("Network "..p1..": "..p1score);
    print("Network "..p2..": "..p2score);
    
    -- Return info needed for advancing Lamarckian loop
	return retval;
end

-- games
-- This is the big learning loop, and what runs the entire learning pipeline.
-- It plays totalGames games of turnlimit turns each. It also automatically
-- increments the number of the network and the current game, so that the data
-- is indexed correctly when saved for future learning

function games(turnlimit, totalGames)
    -- Init the game number
    local gameNo = 0;
    
    -- While we have not finished all the desired games...
    while gameNo < totalGames do
        -- Get the noobs and the pros, and init games table
		local new = newMatch();
		local best = bestMatch();
		local games = {};

        -- Init the four games and play them, with the four matchups possible 
        -- given the two pairs of matches acquired
		InitializeNewGame();
		games[1] = singleGame(turnlimit, new[1], new[2], gameNo);
		InitializeNewGame();
		games[2] = singleGame(turnlimit, best[1], best[2], (gameNo + 1));
		InitializeNewGame();
		games[3] = singleGame(turnlimit, new[1], best[2], (gameNo + 2));
		InitializeNewGame();
		games[4] = singleGame(turnlimit, best[1], new[2], (gameNo + 3));

        -- Breed the next generation of networks. 
		os.execute("python breedNetworks.py "..games[1][1].." "..games[1][2].." "..games[1][3].." "..games[1][4].." "..(gameNo + 10));
		os.execute("python breedNetworks.py "..games[2][1].." "..games[2][2].." "..games[2][3].." "..games[2][4].." "..(gameNo + 11));
		os.execute("python breedNetworks.py "..games[3][1].." "..games[3][2].." "..games[3][3].." "..games[3][4].." "..(gameNo + 12));
		os.execute("python breedNetworks.py "..games[4][1].." "..games[4][2].." "..games[4][3].." "..games[4][4].." "..(gameNo + 13));

        -- Increment game number
		gameNo = gameNo + 4;
	end
end

-- Connecting the function to the game's biult in lua events
LuaEvents.NewGameInitialized.Add(InitializeNewGame);

-- Initialize the environment
Initialize();

-- Start the pipeline
games(35, 100);