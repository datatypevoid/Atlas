--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005, 2006 Dan Gilbert
	Email me at loglow@gmail.com

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

--[[

-- Atlas Data (English)
-- Compiled by Dan Gilbert
-- loglow@gmail.com
-- Last Update: 11/19/2006

-- additions: Niflheim at dragonblight

--]]




AtlasSortIgnore = {"the (.+)"};




ATLAS_TITLE = "Atlas";
ATLAS_SUBTITLE = "Instance Map Browser";
ATLAS_DESC = "Atlas is an instance map browser.";

ATLAS_OPTIONS_BUTTON = "Options";

BINDING_HEADER_ATLAS_TITLE = "Atlas Bindings";
BINDING_NAME_ATLAS_TOGGLE = "Toggle Atlas";
BINDING_NAME_ATLAS_OPTIONS = "Toggle Options";

ATLAS_SLASH = "/atlas";
ATLAS_SLASH_OPTIONS = "options";

ATLAS_STRING_LOCATION = "Location";
ATLAS_STRING_LEVELRANGE = "Level Range";
ATLAS_STRING_PLAYERLIMIT = "Player Limit";
ATLAS_STRING_SELECT_CAT = "Select Category";
ATLAS_STRING_SELECT_MAP = "Select Map";
ATLAS_STRING_SEARCH = "Search";
ATLAS_STRING_CLEAR = "Clear";

ATLAS_OPTIONS_TITLE = "Atlas Options";
ATLAS_OPTIONS_SHOWBUT = "Show Button on Minimap";
ATLAS_OPTIONS_AUTOSEL = "Auto-Select Instance Map";
ATLAS_OPTIONS_BUTPOS = "Button Position";
ATLAS_OPTIONS_TRANS = "Transparency";
ATLAS_OPTIONS_DONE = "Done";
ATLAS_OPTIONS_REPMAP = "Replace the World Map";
ATLAS_OPTIONS_RCLICK = "Right-Click for World Map";
ATLAS_OPTIONS_SHOWMAPNAME = "Show map name";
ATLAS_OPTIONS_RESETPOS = "Reset Position";
ATLAS_OPTIONS_ACRONYMS = "Display Acronyms";
ATLAS_OPTIONS_SCALE = "Scale";
ATLAS_OPTIONS_BUTRAD = "Button Radius";
ATLAS_OPTIONS_CLAMPED = "Clamp window to screen"
ATLAS_OPTIONS_HELP = "Left-click and drag to move this window."

ATLAS_BUTTON_TOOLTIP_TITLE = "Atlas";
ATLAS_BUTTON_TOOLTIP_HINT = "Left-click to open Atlas.\nMiddle-click for Atlas options.\nRight-click and drag to move this button.";
ATLAS_TITAN_HINT = "Left-click to open Atlas.\nMiddle-click for Atlas options.\nRight-click for the display menu.";




ATLAS_HELP = {"About Atlas\n===========\n\nAtlas is a user interface addon for World of Warcraft that provides a number of additional maps as well as an in-game map browser. Typing the command '/atlas' or clicking the mini-map icon will open the Atlas window. The options panel allows you to disable the icon, toggle the Auto Select feature, toggle the Replace World Map feature, toggle the Right-Click feature, change the icon's position, or adjust the transparency of the main window. If the Auto Select feature is enabled, Atlas will automatically open to the map of the instance you're in. If the Replace World Map feature is enabled, Atlas will open instead of the world map when you're in an instance. If the Right-Click feature is enabled, you can Right-Click on Atlas to open the World Map. You can move Atlas around by left-clicking and dragging. Use the small padlock icon in the upper-right corner to lock the window in place."};




ATLAS_LOCALE = {
	menu = "Atlas",
	tooltip = "Atlas",
	button = "Atlas"
};

AtlasZoneSubstitutions = {
	["The Temple of Atal'Hakkar"]	= "The Sunken Temple";
	["Ahn'Qiraj"]					= "The Temple of Ahn'Qiraj";
	["Ruins of Ahn'Qiraj"]			= "The Ruins of Ahn'Qiraj";
}; 

local BLUE = "|cff6666ff";
local GREY = "|cff999999";
local GREN = "|cff66cc33";
local _RED = "|cffcc6666";
local ORNG = "|cffcc9933";
local PURP = "|cff9900ff";
local INDENT = "   ";

--Keeps track of the different categories of maps
Atlas_MapTypes = {
	[1] = "Kalimdor Instances";
	[2] = "Eastern Kingdoms Instances";
};

AtlasMaps = {
	[1] = {
		RagefireChasm = {
		ZoneName = "Ragefire Chasm";
		Acronym = "RFC";
		Location = "Orgrimmar";
		BLUE.."A) Entrance";
		GREY.."1) Maur Grimtotem";
		GREY..INDENT.."Oggleflint";
		GREY.."2) Taragaman the Hungerer";
		GREY.."3) Jergosh the Invoker";
		GREY.."4) Bazzalan";
		};
		WailingCaverns = {
			ZoneName = "Wailing Caverns";
			Acronym = "WC";
			Location = "The Barrens";
			BLUE.."A) Entrance";
			GREY.."1) Disciple of Naralex";
			GREY..INDENT.."Mysterious Wailing Caverns Chest";
			GREY.."2) Lord Cobrahn";
			GREY.."3) Lady Anacondra";
			GREY.."4) Kresh";
			GREY.."5) Lord Pythas";
			GREY.."6) Skum";
			GREY.."7) Lord Serpentis (Upper)";
			GREY.."8) Verdan the Everliving (Upper)";
			GREY.."9) Mutanus the Devourer";
			GREY..INDENT.."Naralex";
			GREY.."10) Deviate Faerie Dragon (Rare)";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."Set: Embrace of the Viper";
		};
		BlackfathomDeeps = {
		ZoneName = "Blackfathom Deeps";
		Acronym = "BFD";
		Location = "Ashenvale";
		BLUE.."A) Entrance";
		GREY.."1) Ghamoo-ra";
		GREY.."2) Lorgalis Manuscript";
		GREY.."3) Lady Sarevess";
		GREY.."4) Argent Guard Thaelrid";
		GREY.."5) Gelihast";
		GREY..INDENT.."Shrine of Gelihast";
		GREY.."6) Lorgus Jett (Varies)";
		GREY.."7) Fathom Stone";
		GREY..INDENT.."Baron Aquanis";
		GREY.."8) Twilight Lord Kelris";
		GREY.."9) Old Serra'kis";
		GREY.."10) Aku'mai";
		GREY..INDENT.."Morridune";
		GREY..INDENT.."Altar of the Deeps";
		"";
		"";
		GREY..INDENT.."Trash Mobs";
	};
		RazorfenKraul = {
		ZoneName = "Razorfen Kraul";
		Acronym = "RFK";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Roogug";
		GREY.."2) Aggem Thorncurse";
		GREY.."3) Death Speaker Jargba";
		GREY.."4) Overlord Ramtusk";
		GREY.."5) Agathelos the Raging";
		GREY.."6) Blind Hunter (Rare)";
		GREY.."7) Charlga Razorflank";
		GREY.."8) Willix the Importer";
		GREY..INDENT.."Heralath Fallowbrook";
		GREY.."9) Earthcaller Halmgar (Rare)";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		RazorfenDowns = {
		ZoneName = "Razorfen Downs";
		Acronym = "RFD";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Tuten'kash";
		GREY.."2) Henry Stern";
		GREY..INDENT.."Belnistrasz";
		GREY..INDENT.."Sah'rhee";
		GREY..INDENT.."Lady Falther'ess (Scourge Invasion)";
		GREY.."3) Mordresh Fire Eye";
		GREY.."4) Glutton";
		GREY.."5) Ragglesnout (Rare, Varies)";
		GREY.."6) Amnennar the Coldbringer";
		GREY.."7) Plaguemaw the Rotting";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		ZulFarrak = {
			ZoneName = "Zul'Farrak";
			Acronym = "ZF";
			Location = "Tanaris";
		ORNG.."Key: Mallet of Zul'Farrak (Gahz'rilla)";
		BLUE.."A) Entrance";
		GREY.."1) Antu'sul";
		GREY.."2) Theka the Martyr";
		GREY.."3) Witch Doctor Zum'rah";
		GREY..INDENT.."Zul'Farrak Dead Hero";
		GREY.."4) Nekrum Gutchewer";
		GREY..INDENT.."Shadowpriest Sezz'ziz";
		GREY..INDENT.."Dustwraith (Rare)";
		GREY.."5) Sergeant Bly";
		GREY..INDENT.."Weegli Blastfuse";
		GREY..INDENT.."Murta Grimgut";
		GREY..INDENT.."Raven";
		GREY..INDENT.."Oro Eyegouge";
		GREY..INDENT.."Sandfury Executioner";
		GREY.."6) Hydromancer Velratha";
		GREY..INDENT.."Gahz'rilla (Summon)";
		GREY..INDENT.."Elder Wildmane (Lunar)";
		GREY.."7) Chief Ukorz Sandscalp";
		GREY..INDENT.."Ruuzlu";
		GREY.."8) Zerillis (Rare, Wanders)";
		GREY.."9) Sandarr Dunereaver (Rare)";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		Maraudon = {
		ZoneName = "Maraudon";
		Acronym = "Mara";
		Location = "Desolace";
		ORNG.."Key: Scepter of Celebras (Portal)";
		BLUE.."A) Entrance (Orange)";
		BLUE.."B) Entrance (Purple)";
		BLUE.."C) Entrance (Portal)";
		GREY.."1) Veng (The Fifth Khan)";
		GREY.."2) Noxxion";
		GREY.."3) Razorlash";
		GREY.."4) Maraudos (The Fourth Khan)";
		GREY.."5) Lord Vyletongue";
		GREY.."6) Meshlok the Harvester (Rare)";
		GREY.."7) Celebras the Cursed";
		GREY.."8) Landslide";
		GREY.."9) Tinkerer Gizlock";
		GREY.."10) Rotgrip";
		GREY.."11) Princess Theradras";
		GREY.."12) Elder Splitrock (Lunar)";
		};
		DireMaulEast = {
			ZoneName = "Dire Maul (East)";
			Acronym = "DM";
			Location = "Feralas";
			ORNG.."Key: Brazier of Invocation (D2 Summon)";
			BLUE.."A) Entrance";
			BLUE.."B) Entrance";
			BLUE.."C) Entrance";
			BLUE.."D) Exit";
			GREY.."1) Pusillin Chase Begins";
			GREY.."2) Pusillin Chase Ends";
			GREY.."3) Zevrim Thornhoof";
			GREY..INDENT.."Hydrospawn";
			GREY..INDENT.."Lethtendris";
			GREY..INDENT.."Pimgib";
			GREY.."4) Old Ironbark";
			GREY.."5) Alzzin the Wildshaper";
			GREY..INDENT.."Isalien (Summon)";
			GREY..INDENT.."Felvine Shard";
			GREN.."1') A Dusty Tome (Varies)";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."Dire Maul Books";
			GREY..INDENT.."Set: Ironweave Battlesuit";
		};
		DireMaulNorth = {
		ZoneName = "Dire Maul (North)";
		Acronym = "DM";
		Location = "Feralas";
		ORNG.."Key: Crescent Key";
		ORNG.."Key: Gordok Courtyard Key";
		ORNG.."Key: Gordok Inner Door Key";
		BLUE.."A) Entrance";
		BLUE.."B) Library";
		BLUE.."C) Dire Maul (West)";
		GREY.."1) Guard Mol'dar";
		GREY.."2) Stomper Kreeg";
		GREY.."3) Guard Fengus";
		GREY.."4) Knot Thimblejack";
		GREY..INDENT.."Guard Slip'kik";
		GREY.."5) Captain Kromcrush";
		GREY.."6) King Gordok";
		GREY..INDENT.."Cho'Rush the Observer";
		GREN.."1') Library";
		GREN..INDENT.."Falrin Treeshaper";
		GREN..INDENT.."Lorekeeper Lydros";
		GREN..INDENT.."Lorekeeper Javon";
		GREN..INDENT.."Lorekeeper Kildrath";
		GREN..INDENT.."Lorekeeper Mykos";
		GREN..INDENT.."Shen'dralar Provisioner";
		GREN..INDENT.."Skeletal Remains of Kariel Winthalus";
		GREN.."2') A Dusty Tome (Varies)";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Dire Maul Books";
		GREY..INDENT.."Tribute Run";
		};
		DireMaulWest = {
		ZoneName = "Dire Maul (West)";
		Acronym = "DM";
		Location = "Feralas";
		ORNG.."Key: Crescent Key";
		ORNG.."Key: J'eevee's Jar (Lord Hel'nurath)";
		BLUE.."A) Entrance";
		BLUE.."B) Pylons";
		BLUE.."C) Dire Maul (North)";
		GREY.."1) Shen'dralar Ancient";
		GREY.."2) Tendris Warpwood";
		GREY..INDENT.."Ancient Equine Spirit";
		GREY.."3) Illyanna Ravenoak";
		GREY..INDENT.."Ferra";
		GREY.."4) Magister Kalendris";
		GREY.."5) Tsu'Zee (Rare)";
		GREY.."6) Immol'thar";
		GREY..INDENT.."Lord Hel'nurath (Rare, Summon)";
		GREY.."7) Prince Tortheldrin";
		GREY..INDENT.."The Prince's Chest";
		GREY.."8) Revanchion (Scourge Invasion)";
		GREN.."1') Library";
		GREN..INDENT.."Falrin Treeshaper";
		GREN..INDENT.."Lorekeeper Lydros";
		GREN..INDENT.."Lorekeeper Javon";
		GREN..INDENT.."Lorekeeper Kildrath";
		GREN..INDENT.."Lorekeeper Mykos";
		GREN..INDENT.."Shen'dralar Provisioner";
		GREN..INDENT.."Skeletal Remains of Kariel Winthalus";
		GREN.."2') A Dusty Tome (Varies)";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Dire Maul Books";		
	};
		OnyxiasLair = {
			ZoneName = "Onyxia's Lair";
			Acronym = "Ony";
			Location = "Dustwallow Marsh";
			ORNG.."Attunement Required";
			ORNG.."Key: Drakefire Amulet";
			BLUE.."A) Entrance";
			GREY.."1) Onyxian Warders";
			GREY.."2) Whelp Eggs";
			GREY.."3) Onyxia";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			"";
			ORNG.."Damage: Fire";
		};
		TheTempleofAhnQiraj = {
		ZoneName = "The Temple of Ahn'Qiraj";
		Acronym = "AQ40";
		Location = "Silithus";
		ORNG.."Rep: Brood of Nozdormu";
		BLUE.."A) Entrance";
		GREY.."1) The Prophet Skeram (Outside)";
		GREY.."2) Bug Trio (Optional)";
		GREY..INDENT.."Vem";
		GREY..INDENT.."Lord Kri";
		GREY..INDENT.."Princess Yauj";
		GREY.."3) Battleguard Sartura";
		GREY.."4) Fankriss the Unyielding";
		GREY.."5) Viscidus (Optional)";
		GREY.."6) Princess Huhuran";
		GREY.."7) Twin Emperors";
		GREY..INDENT.."Emperor Vek'lor";
		GREY..INDENT.."Emperor Vek'nilash";
		GREY.."8) Ouro (Optional)";
		GREY.."9) C'Thun";
		GREN.."1') Andorgos";
		GREN..INDENT.."Vethsera";
		GREN..INDENT.."Kandrostrasz";
		GREN.."2') Arygos";
		GREN..INDENT.."Caelestrasz";
		GREN..INDENT.."Merithra of the Dream";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."AQ Enchants";
		GREY..INDENT.."AQ40 Class Sets";
		GREY..INDENT.."AQ Opening Quest Chain";
		"";
		ORNG.."Damage: Nature";
	};
		TheRuinsofAhnQiraj = {
		ZoneName = "The Ruins of Ahn'Qiraj";
		Acronym = "AQ20";
		Location = "Silithus";
		ORNG.."Rep: Cenarion Circle";
		BLUE.."A) Entrance";
		GREY.."1) Kurinnaxx";
		GREY..INDENT.."Lieutenant General Andorov";
		GREY..INDENT.."Four Kaldorei Elites";
		GREY.."2) General Rajaxx";
		GREY..INDENT.."Captain Qeez";
		GREY..INDENT.."Captain Tuubid";
		GREY..INDENT.."Captain Drenn";
		GREY..INDENT.."Captain Xurrem";
		GREY..INDENT.."Major Yeggeth";
		GREY..INDENT.."Major Pakkon";
		GREY..INDENT.."Colonel Zerran";
		GREY.."3) Moam (Optional)";
		GREY.."4) Buru the Gorger (Optional)";
		GREY.."5) Ayamiss the Hunter (Optional)";
		GREY.."6) Ossirian the Unscarred";
		GREN.."1') Safe Room";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Class Books";
		GREY..INDENT.."AQ Enchants";
		GREY..INDENT.."AQ20 Class Sets";
		"";
		ORNG.."Damage: Nature";
		};
	};
	[2] = {
		BlackrockDepths = {
			ZoneName = "Blackrock Depths";
			Acronym = "BRD";
			Location = "Blackrock Mountain";
		ORNG.."Key: Shadowforge Key";
		ORNG.."Key: Prison Cell Key (Jail Break)";
		ORNG.."Key: Banner of Provocation (Theldren)";
		BLUE.."A) Entrance";
		GREY.."1) Lord Roccor";
		GREY.."2) Kharan Mighthammer";
		GREY.."3) Commander Gor'shak";
		GREY.."4) Marshal Windsor";
		GREY.."5) High Interrogator Gerstahn";
		GREY.."6) Ring of Law";
		GREY..INDENT.."Anub'shiah (Random)";
		GREY..INDENT.."Eviscerator (Random)";
		GREY..INDENT.."Gorosh the Dervish (Random)";
		GREY..INDENT.."Grizzle (Random)";
		GREY..INDENT.."Hedrum the Creeper (Random)";
		GREY..INDENT.."Ok'thor the Breaker (Random)";
		GREY..INDENT.."Theldren & Co. (Summon)";
		GREY..INDENT.."Lefty |cfffff468rogue";
		GREY..INDENT.."Malgen Longspear |cffaad372hunter";
		GREY..INDENT.."Gnashjaw |cffff7c0apet";
		GREY..INDENT.."Korv |cff2773ffshaman";
		GREY..INDENT.."Rezznik |cffc69b6dengineer";
		GREY..INDENT.."Rotfang |cfffff468rogue";
		GREY..INDENT.."Snokh Blackspine |cff68ccefmage";
		GREY..INDENT.."Va'jashni |cffffffffpriest";
		GREY..INDENT.."Volida |cff68ccefmage";
		GREY..INDENT.."Houndmaster Grebmar (Lower)";
		GREY..INDENT.."Elder Morndeep (Lunar)";
		GREY..INDENT.."High Justice Grimstone";
		GREY.."7) Mon. of Franclorn Forgewright";
		GREY..INDENT.."Pyromancer Loregrain (Rare)";
		GREY.."8) The Vault";
		GREY..INDENT.."Warder Stilgiss (Rare)";
		GREY..INDENT.."Verek (Rare)";
		GREY..INDENT.."Watchman Doomgrip";
		GREY.."9) Fineous Darkvire";
		GREY.."10) The Black Anvil";
		GREY..INDENT.."Lord Incendius";
		GREY.."11) Bael'Gar";
		GREY.."12) Shadowforge Lock";
		GREY.."13) General Angerforge";
		GREY.."14) Golem Lord Argelmach";
		GREY..INDENT.."Field Repair Bot 74A";
		GREY..INDENT.."Blacksmith Plans";
		GREY.."15) The Grim Guzzler";
		GREY..INDENT.."Hurley Blackbreath";
		GREY..INDENT.."Lokhtos Darkbargainer";
		GREY..INDENT.."Mistress Nagmara";
		GREY..INDENT.."Phalanx";
		GREY..INDENT.."Plugger Spazzring";
		GREY..INDENT.."Private Rocknot";
		GREY..INDENT.."Ribbly Screwspigot";
		GREY.."16) Ambassador Flamelash";
		GREY.."17) Panzor the Invincible (Rare)";
		GREY..INDENT.."Blacksmith Plans";
		GREY.."18) Summoner's Tomb";
		GREY.."19) The Lyceum";
		GREY.."20) Magmus";
		GREY.."21) Emperor Dagran Thaurissan";
		GREY..INDENT.."Princess Moira Bronzebeard";
		GREY..INDENT.."High Priestess of Thaurissan";
		GREY.."22) The Black Forge";
		GREY.."23) Molten Core";
		GREY..INDENT.."Core Fragment";
		GREY.."24) Overmaster Pyron";
		GREY.."25) Blacksmith Plans";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: The Gladiator";
		GREY..INDENT.."Set: Ironweave Battlesuit";
		};
		BlackrockSpireLower = {
		ZoneName = "Blackrock Spire (Lower)";
		Acronym = "LBRS";
		Location = "Blackrock Mountain";
		ORNG.."Key: Brazier of Invocation (DS2)";
		BLUE.."A) Entrance";
		BLUE.."B) Upper Blackrock Spire (UBRS)";
		BLUE.."C-F) Connections";
		GREY.."1) Vaelan (Up)";
		GREY.."2) Warosh (Wanders)";
		GREY..INDENT.."Elder Stonefort";
		GREY.."3) Roughshod Pike";
		GREY.."4) Spirestone Butcher (Rare)";
		GREY.."5) Highlord Omokk";
		GREY.."6) Spirestone Battle Lord (Rare)";
		GREY..INDENT.."Spirestone Lord Magus (Rare)";
		GREY.."7) Shadow Hunter Vosh'gajin";
		GREY..INDENT.."Fifth Mosh'aru Tablet";
		GREY.."8) Bijou";
		GREY.."9) War Master Voone";
		GREY..INDENT.."Mor Grayhoof (Summon)";
		GREY..INDENT.."Sixth Mosh'aru Tablet";
		GREY.."10) Bijou's Belongings";
		GREY.."11) Human Remains (Lower)";
		GREY..INDENT.."Unfired Plate Gauntlets (Lower)";
		GREY.."12) Bannok Grimaxe (Rare)";
		GREY.."13) Mother Smolderweb";
		GREY.."14) Crystal Fang (Rare)";
		GREY.."15) Urok's Tribute Pile";
		GREY..INDENT.."Urok Doomhowl (Summon)";
		GREY.."16) Quartermaster Zigris";
		GREY.."17) Halycon";
		GREY..INDENT.."Gizrul the Slavener";
		GREY.."18) Ghok Bashguud (Rare)";
		GREY.."19) Overlord Wyrmthalak";
		GREN.."1') Burning Felguard (Rare, Summon)";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Ironweave Battlesuit";
		GREY..INDENT.."Set: Spider's Kiss";
		GREY..INDENT.."D1/D2 Sets";
		};
		BlackrockSpireUpper = {
			ZoneName = "Blackrock Spire (Upper)";
			Acronym = "UBRS";
			Location = "Blackrock Mountain";
			ORNG.."Key: Seal of Ascension";
			ORNG.."Key: Brazier of Invocation (DS2)";
			BLUE.."A) Entrance";
			BLUE.."B) Lower Blackrock Spire (LBRS)";
			BLUE.."C-E) Connections";
			GREY.."1) Pyroguard Emberseer";
			GREY.."2) Solakar Flamewreath";
			GREY..INDENT.."Father Flame";
			GREY.."3) Darkstone Tablet";
			GREY..INDENT.."Doomrigger's Clasp";
			GREY.."4) Jed Runewatcher (Rare)";
			GREY.."5) Goraluk Anvilcrack";
			GREY.."6) Warchief Rend Blackhand";
			GREY..INDENT.."Gyth";
			GREY.."7) Awbee";
			GREY.."8) The Beast";
			GREY..INDENT.."Lord Valthalak (Summon)";
			GREY..INDENT.."Finkle Einhorn";
			GREY.."9) General Drakkisath";
			GREY..INDENT.."Drakkisath's Brand";
			GREY.."10) Blackwing Lair (BWL)";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."Set: Ironweave Battlesuit";
			GREY..INDENT.."D1/D2 Sets";
		};
		BlackwingLair = {
			ZoneName = "Blackwing Lair";
			Acronym = "BWL";
			Location = "Blackrock Spire";
			ORNG.."Attunement Required";
			BLUE.."A) Entrance";
			BLUE.."B) Connects";
			BLUE.."C) Connects";
			GREY.."1) Razorgore the Untamed";
			GREY.."2) Vaelastrasz the Corrupt";
			GREY.."3) Broodlord Lashlayer";
			GREY.."4) Firemaw";
			GREY.."5) Ebonroc";
			GREY.."6) Flamegor";
			GREY.."7) Chromaggus";
			GREY.."8) Nefarian";
			GREY.."9) Master Elemental Shaper Krixix";
			GREN.."1') Alchemy Lab";
			GREN.."2') Draconic for Dummies";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."T2 Sets";
			"";
			"";
			"";
			"";
			"";
			"";
			ORNG.."Damage: Fire";
		};
		Gnomeregan = {
			ZoneName = "Gnomeregan";
			Location = "Dun Morogh";
		ORNG.."Key: Workshop Key (Back Door)";
		BLUE.."A) Entrance (Front Door)";
		BLUE.."B) Entrance (Back Door)";
		GREY.."1) Blastmaster Emi Shortfuse";
		GREY..INDENT.."Grubbis";
		GREY..INDENT.."Chomper";
		GREY.."2) Clean Room";
		GREY..INDENT.."Tink Sprocketwhistle";
		GREY..INDENT.."The Sparklematic 5200";
		GREY..INDENT.."Mail Box";
		GREY.."3) Kernobee";
		GREY..INDENT.."Alarm-a-bomb 2600";
		GREY..INDENT.."Matrix Punchograph 3005-B";
		GREY.."4) Viscous Fallout";
		GREY.."5) Electrocutioner 6000";
		GREY..INDENT.."Matrix Punchograph 3005-C";
		GREY.."6) Crowd Pummeler 9-60 (Upper)";
		GREY..INDENT.."Matrix Punchograph 3005-D";
		GREY.."7) Dark Iron Ambassador (Rare)";
		GREY.."8) Mekgineer Thermaplugg";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		MoltenCore = {
			ZoneName = "Molten Core";
			Acronym = "MC";
			Location = "Blackrock Depths";
			ORNG.."Attunement Required";
			ORNG.."Rep: Hydraxian Waterlords";
			ORNG.."Key: Aqual/Eternal Quintessence (Boss)";
			BLUE.."A) Entrance";
			GREY.."1) Lucifron";
			GREY.."2) Magmadar";
			GREY.."3) Gehennas";
			GREY.."4) Garr";
			GREY.."5) Shazzrah";
			GREY.."6) Baron Geddon";
			GREY.."7) Golemagg the Incinerator";
			GREY.."8) Sulfuron Harbinger";
			GREY.."9) Majordomo Executus";
			GREY.."10) Ragnaros";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."Random Boss Loot";
			GREY..INDENT.."T1 Sets";
			GREY..INDENT.."T2 Sets";
			"";
			"";
			"";
			"";
			"";
			ORNG.."Damage: Fire";
		};
		Scholomance = {
		ZoneName = "Scholomance";
		Acronym = "Scholo";
		Location = "Western Plaguelands";
		ORNG.."Rep: The Argent Dawn";
		ORNG.."Key: Skeleton Key";
		ORNG.."Key: Viewing Room Key (Viewing Room)";
		ORNG.."Key: Blood of Innocents (Kirtonos)";
		ORNG.."Key: Brazier of Invocation (DS2)";
		ORNG.."Key: Divination Scryer (Darkreaver)";
		BLUE.."A) Entrance";
		BLUE.."B) Stairway";
		BLUE.."C) Stairway";
		GREY.."1) Blood Steward of Kirtonos";
		GREY..INDENT.."Deed to Southshore";
		GREY.."2) Kirtonos the Herald (Summon)";
		GREY.."3) Jandice Barov";
		GREY..INDENT.."Journal of Jandice Barov";
		GREY.."4) Deed to Tarren Mill";
		GREY..INDENT.."Lord Blackwood (Scourge Invasion)";
		GREY.."5) Rattlegore (Lower)";
		GREY..INDENT.."Death Knight Darkreaver (Summon)";
		GREY.."6) Marduk Blackpool";
		GREY..INDENT.."Vectus";
		GREY.."7) Ras Frostwhisper";
		GREY..INDENT.."Deed to Brill";
		GREY..INDENT.."Kormok (Summon)";
		GREY.."8) Instructor Malicia";
		GREY.."9) Doctor Theolen Krastinov";
		GREY.."10) Lorekeeper Polkelt";
		GREY.."11) The Ravenian";
		GREY.."12) Lord Alexei Barov";
		GREY..INDENT.."Deed to Caer Darrow";
		GREY.."13) Lady Illucia Barov";
		GREY.."14) Darkmaster Gandling";
		GREN.."1') Torch Lever";
		GREN.."2') Old Treasure Chest";
		GREN.."3') Alchemy Lab";
		"";
		GREY..INDENT.."Trash Mobs";		
        GREY..INDENT.."Set: Necropile Raiment";
        GREY..INDENT.."Set: Cadaverous Garb";
        GREY..INDENT.."Set: Bloodmail Regalia";
        GREY..INDENT.."Set: Deathbone Guardian";
		GREY..INDENT.."Set: Ironweave Battlesuit";
		GREY..INDENT.."D1/D2 Sets";
		};
		SMLibrary = {
		ZoneName = "SM: Library";
		Acronym = "SM Lib";
		Location = "Tirisfal Glades";
		BLUE.."A) Entrance";
		GREY.."1) Houndmaster Loksey";
		GREY.."2) Arcanist Doan";
		GREN.."1') Doan's Strongbox";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Chain of the Scarlet Crusade";
		};
		SMArmory = {
		ZoneName = "SM: Armory";
		Acronym = "SM Arm";
		Location = "Tirisfal Glades";
		ORNG.."Key: The Scarlet Key";
		BLUE.."A) Entrance";
		GREY.."1) Herod";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Chain of the Scarlet Crusade";
		};
		SMCathedral = {
		ZoneName = "SM: Cathedral";
		Acronym = "SM Cath";
		Location = "Tirisfal Glades";
		ORNG.."Key: The Scarlet Key";
		BLUE.."A) Entrance";
		GREY.."1) High Inquisitor Fairbanks";
		GREY.."2) Scarlet Commander Mograine";
		GREY.."3) High Inquisitor Whitemane";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Chain of the Scarlet Crusade";
		};
		SMGraveyard = {
		ZoneName = "SM: Graveyard";
		Acronym = "SM GY";
		Location = "Tirisfal Glades";
		BLUE.."A) Entrance";
		GREY.."1) Interrogator Vishas";
		GREY..INDENT.."Vorrel Sengutz";
		GREY.."2) Scorn (Scourge Invasion)";
		GREY.."3) Bloodmage Thalnos";
		GREN.."1') Ironspine (Rare)";
		GREN..INDENT.."Azshir the Sleepless (Rare)";
		GREN..INDENT.."Fallen Champion (Rare)";		
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Chain of the Scarlet Crusade";
		};
		ShadowfangKeep = {
			ZoneName = "Shadowfang Keep";
			Acronym = "SFK";
			Location = "Silverpine Forest";
		BLUE.."A) Entrance";
		BLUE.."B) Walkway";
		BLUE.."C) Walkway";
		BLUE..INDENT.."Deathsworn Captain (Rare)";
		GREY.."1) Deathstalker Adamant";
		GREY..INDENT.."Sorcerer Ashcrombe";
		GREY..INDENT.."Rethilgore";
		GREY.."2) Razorclaw the Butcher";
		GREY.."3) Baron Silverlaine";
		GREY.."4) Commander Springvale";
		GREY.."5) Odo the Blindwatcher";
		GREY.."6) Fenrus the Devourer";
		GREY.."7) Wolf Master Nandos";
		GREY.."8) Archmage Arugal";
		GREY.."9) Fel Steed";
		GREY..INDENT.."Jordan's Hammer";
		GREY.."10) Sever (Scourge Invasion)";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		Stratholme = {
		ZoneName = "Stratholme";
		Acronym = "Strat";
		Location = "Eastern Plaguelands";
		ORNG.."Rep: The Argent Dawn";
		ORNG.."Key: The Scarlet Key (Scarlet Side)";
		ORNG.."Key: Key to the City (Undead Side)";
		ORNG.."Key: Mailbox Keys (Postmaster)";
		ORNG.."Key: Brazier of Invocation (DS2)";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Side)";
		GREY.."1) Skul (Rare, Varies)";
		GREY..INDENT.."Stratholme Courier";
		GREY..INDENT.."Fras Siabi";
		GREY.."2) Atiesh (Summon)";
		GREY..INDENT.."Balzaphon (Scourge Invasion)";
		GREY.."3) Hearthsinger Forresten (Rare, Varies)";
		GREY.."4) The Unforgiven";
		GREY.."5) Elder Farwhisper (Lunar)";
		GREY.."6) Timmy the Cruel";
		GREY.."7) Malor the Zealous";
		GREY..INDENT.."Medallion of Faith";
		GREY.."8) Crimson Hammersmith (Summon)";
		GREY..INDENT.."Blacksmithing Plans";
		GREY.."9) Cannon Master Willey";
		GREY.."10) Archivist Galford";
		GREY.."11) Grand Crusader Dathrohan";
		GREY..INDENT.."Balnazzar";
		GREY..INDENT.."Sothos & Jarien (Summon)";
		GREY.."12) Magistrate Barthilas (Varies)";
		GREY.."13) Aurius";
		GREY.."14) Stonespine (Rare, Wanders)";
		GREY.."15) Baroness Anastari";
		GREY..INDENT.."Black Guard Swordsmith (Summon)";
		GREY..INDENT.."Blacksmithing Plans";
		GREY.."16) Nerub'enkan";
		GREY.."17) Maleki the Pallid";
		GREY.."18) Ramstein the Gorger";
		GREY.."19) Baron Rivendare";
		GREY..INDENT.."Ysida Harmon";
		GREN.."1') Crusaders' Square Postbox";
		GREN.."2') Market Row Postbox";
		GREN.."3') Festival Lane Postbox";
		GREN.."4') Elders' Square Postbox";
		GREN.."5') King's Square Postbox";
		GREN.."6') Fras Siabi's Postbox";
		GREN.."3rd Box Opened: Postmaster Malown";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: The Postmaster";
		GREY..INDENT.."Set: Ironweave Battlesuit";
		GREY..INDENT.."D1/D2 Sets";
		};
		TheDeadmines = {
			ZoneName = "The Deadmines";
			Acronym = "VC";
			Location = "Westfall";
		BLUE.."A) Entrance";
		BLUE.."B) Exit";
		GREY.."1) Rhahk'Zor";
		GREY.."2) Miner Johnson (Rare)";
		GREY.."3) Sneed";
		GREY..INDENT.."Sneed's Shredder";
		GREY.."4) Gilnid";
		GREY.."5) Defias Gunpowder";
		GREY.."6) Mr. Smite";
		GREY..INDENT.."Cookie";
		GREY..INDENT.."Captain Greenskin";
		GREY..INDENT.."Edwin VanCleef";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."Set: Devias Leather";
		};
		TheStockade = {
			ZoneName = "The Stockade";
			Location = "Stormwind City";
			BLUE.."A) Entrance";
			GREY.."1) Targorr the Dread (Varies)";
			GREY.."2) Kam Deepfury";
			GREY.."3) Hamhock";
			GREY.."4) Bazil Thredd";
			GREY.."5) Dextren Ward";
			GREY.."6) Bruegal Ironknuckle (Rare)";
			"";
			GREY..INDENT.."Trash Mobs";
		};
		TheSunkenTemple = {
			ZoneName = "The Sunken Temple";
			Acronym = "ST";
			Location = "Swamp of Sorrows";
			ORNG.."Key: Yeh'kinya's Scroll (Avatar of Hakkar)";
			BLUE.."A) Entrance";
			BLUE.."B) Stairway";
			BLUE.."C) Troll Minibosses (Upper)";
			BLUE..INDENT.."Gasher";
			BLUE..INDENT.."Loro";
			BLUE..INDENT.."Hukku";
			BLUE..INDENT.."Zolo";
			BLUE..INDENT.."Mijan";
			BLUE..INDENT.."Zul'Lor";
			GREY.."1) Altar of Hakkar";
			GREY..INDENT.."Atal'alarion";
			GREY.."2) Dreamscythe";
			GREY..INDENT.."Weaver";
			GREY.."3) Avatar of Hakkar";
			GREY.."4) Jammal'an the Prophet";
			GREY..INDENT.."Ogom the Wretched";
			GREY.."5) Morphaz";
			GREY..INDENT.."Hazzas";
			GREY.."6) Shade of Eranikus";
			GREY..INDENT.."Essence Font";
			GREY..INDENT.."Malfurion Stormrage (Summon)";
			GREY.."7) Spawn of Hakkar";
			GREY.."8) Elder Starsong (Lunar)";
			GREN.."1'-6') Statue Activation Order";
			"";
			GREY..INDENT.."Trash Mobs";
		};
		Uldaman = {
			ZoneName = "Uldaman";
			Acronym = "Ulda";
			Location = "Badlands";
		ORNG.."Key: Staff of Prehistoria (Ironaya)";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Back)";
		GREY.."1) Baelog";
		GREY..INDENT.."Eric \"The Swift\"";
		GREY..INDENT.."Olaf";
		GREY..INDENT.."Baelog's Chest";
		GREY..INDENT.."Conspicuous Urn";
		GREY.."2) Remains of a Paladin";
		GREY.."3) Revelosh";
		GREY.."4) Ironaya";
		GREY.."5) Obsidian Sentinel";
		GREY.."6) Annora (Master Enchanter)";
		GREY.."7) Ancient Stone Keeper";
		GREY.."8) Galgann Firehammer";
		GREY..INDENT.."Tablet of Will";
		GREY..INDENT.."Shadowforge Cache";
		GREY.."9) Grimlok";
		GREY.."10) Archaedas (Lower)";
		GREY.."11) The Discs of Norgannon";
		GREY..INDENT.."Ancient Treasure (Lower)";
		"";
		GREY..INDENT.."Trash Mobs";
		};
		ZulGurub = {
			ZoneName = "Zul'Gurub";
			Acronym = "ZG";
			Location = "Stranglethorn Vale";
			ORNG.."Rep: The Zandalar Tribe";
			ORNG.."Key: Gurubashi Mojo Madness (Edge of Madness)";
			ORNG.."Key: Mudskunk Lure (Gahz'ranka)";
			BLUE.."A) Entrance";
			GREY.."1) High Priestess Jeklik (Bat)";
			GREY.."2) High Priest Venoxis (Snake)";
			GREY.."3) Zanza the Restless";
			GREY.."4) High Priestess Mar'li (Spider)";
			GREY.."5) Bloodlord Mandokir (Raptor, Optional)";
			GREY..INDENT.."Ohgan |cffff7c0araptor";
			GREY.."6) Edge of Madness (Optional)";
			GREY..INDENT.."Gri'lek (Random)";
			GREY..INDENT.."Hazza'rah (Random)";
			GREY..INDENT.."Renataki (Random)";
			GREY..INDENT.."Wushoolay (Random)";
			GREY.."7) Gahz'ranka (Optional, Summon)";
			GREY.."8) High Priest Thekal (Tiger)";
			GREY..INDENT.."Zealot Zath |cfffff468rogue";
			GREY..INDENT.."Zealot Lor'Khan |cff2773ffshaman";
			GREY.."9) High Priestess Arlokk (Panther)";
			GREY.."10) Jin'do the Hexxer (Undead, Optional)";
			GREY.."11) Hakkar";
			GREN.."1') Muddy Churning Waters";
			"";
			GREY..INDENT.."Trash Mobs";
			GREY..INDENT.."Random Boss Loot";
			GREY..INDENT.."Set: Primal Blessing";
			GREY..INDENT.."Set: The Twin Blades of Hakkari";
			GREY..INDENT.."ZG Ring Sets";
			GREY..INDENT.."ZG Class Sets";
			GREY..INDENT.."ZG Enchants";
			"";
			ORNG.."Damage: Nature";
		};
		Naxxramas = {
			ZoneName = "Naxxramas";
			Acronym = "Naxx";
			Location = "Stratholme";
		ORNG.."Attunement Required";
		ORNG.."Rep: The Argent Dawn";
		BLUE.."A) Entrance";
		BLUE..INDENT.."Archmage Tarsis Kir-Moldir";
		BLUE..INDENT.."Mr. Bigglesworth (Wanders)";
		BLUE.."Abomination Wing";
		BLUE..INDENT.."1) Patchwerk";
		BLUE..INDENT.."2) Grobbulus";
		BLUE..INDENT.."3) Gluth";
		BLUE..INDENT.."4) Thaddius";
		ORNG.."Spider Wing";
		ORNG..INDENT.."1) Anub'Rekhan";
		ORNG..INDENT.."2) Grand Widow Faerlina";
		ORNG..INDENT.."3) Maexxna";
		PURP.."Necro Wing";
		PURP..INDENT.."1) Noth the Plaguebringer";
		PURP..INDENT.."2) Heigan the Unclean";
		PURP..INDENT.."3) Loatheb";
		_RED.."Deathknight Wing";
		_RED..INDENT.."1) Instructor Razuvious";
		_RED..INDENT.."2) Gothik the Harvester";
		_RED..INDENT.."3) The Four Horsemen";
		_RED..INDENT..INDENT.."Thane Korth'azz";
		_RED..INDENT..INDENT.."Lady Blaumeux";
		_RED..INDENT..INDENT.."Highlord Mograine";
		_RED..INDENT..INDENT.."Sir Zeliek";
		GREN.."Frostwyrm Lair";
		GREN..INDENT.."1) Sapphiron";
		GREN..INDENT.."2) Kel'Thuzad";
		"";
		GREY..INDENT.."Trash Mobs";
		GREY..INDENT.."T3 Sets";
		"";
		ORNG.."Damage: Nature, Fire, Shadow, Frost";
		};
	};
};
