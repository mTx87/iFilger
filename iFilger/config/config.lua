﻿local I, C, L = unpack(select(2, ...)) -- Import: I - functions, constants, variables; C - config; L - locales

C["general"] = {
	["autoscale"] = false,                               -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 1,                                 -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["multisampleprotect"] = true,                      -- i don't recommend this because of shitty border but, voila!
	["backdropcolor"] = { .1,.1,.1 },                   -- default backdrop color of panels
	["bordercolor"] = { .6,.6,.6 },                     -- default border color of panels
}

C["cooldown"] = {
	["enable"] = true,                                  -- do i really need to explain this?
	["treshold"] = 8,                                   -- show decimal under X seconds and text turn red
}

C["Filger_Spells"] = {
	["DEATHKNIGHT"] = {  -------------------------------------------------------------------------------------------------------- Death Knight -- A REVOIR
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			{ spellID = 45529, size = 30, filter = "CD" }, -- Blood Tap
			{ spellID = 56222, size = 30, filter = "CD" }, -- Dark Command
			{ spellID = 48743, size = 30, filter = "CD" }, -- Death Pact		
			{ spellID = 47528, size = 30, filter = "CD" }, -- Mind Freeze	
			{ spellID = 48792, size = 30, filter = "CD" }, -- Icebound Fortitude
			{ spellID = 47568, size = 30, filter = "CD" }, -- Empower Rune Weapon
			{ spellID = 49184, size = 30, filter = "CD" }, -- Howling Blast
			{ spellID = 49576, size = 30, filter = "CD" }, -- Death Grip
			{ spellID = 46584, size = 30, filter = "CD" }, -- Raise Dead
			{ spellID = 48707, size = 30, filter = "CD" }, -- Anti-Magic Shell
			{ spellID = 43265, size = 30, filter = "CD" }, -- Death and Decay
			{ spellID = 55233, size = 30, filter = "CD" }, -- Vampiric Blood
			{ spellID = 49028, size = 30, filter = "CD" }, -- Dancing Rune Weapon
			{ spellID = 49039, size = 30, filter = "CD" }, -- Lichborne
			{ spellID = 51052, size = 30, filter = "CD" }, -- Anti-Magic Zone
			{ spellID = 49206, size = 30, filter = "CD" }, -- Summon Gargoyle
			{ spellID = 77575, size = 30, filter = "CD" }, -- Outbreak
			{ spellID = 77606, size = 30, filter = "CD" }, -- Dark Simulacrum
		},	
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },
			
			{ spellID = 59052, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Freezing Fog
			{ spellID = 49509, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Scent of Blood
			{ spellID = 55233, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Vampiric Blood
			{ spellID = 49501, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Blade Barrier
			{ spellID = 50887, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Icy Talons
			{ spellID = 49039, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Lichborne
			{ spellID = 3714, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Path of Frost
			{ spellID = 47476, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, --Strangulate
			{ spellID = 45524, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, --Chains of Ice
			{ spellID = 59921, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Frost Fever
			{ spellID = 43265, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, --Death and Decay
			{ spellID = 59879, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Blood Plague
			{ spellID = 49194, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Unholy Blight

		},
		{
			Name = "DK Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			{ spellID = 49530, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, --Sudden Doom
			{ spellID = 81135, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, --Crimson Scourge
			{ spellID = 51128, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, --Killing Machine

		},
	},
	["MAGE"] = { -------------------------------------------------------------------------------------------------------- Mage
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			{ spellID = 33395, size = 30, filter = "CD" }, -- Water Elemental Freeze
			{ spellID = 11113, size = 30, filter = "CD" }, -- Blast Wave
			{ spellID = 2136, size = 30, filter = "CD" }, -- Fire Blast
			{ spellID = 2139, size = 30, filter = "CD" }, --Counterspell
			{ spellID = 82731, size = 30, filter = "CD" }, --Flame Orb
			{ spellID = 543, size = 30, filter = "CD" }, --Mage Ward
		},	
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },
			
			{ spellID = 44614, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Frostfire Bolt aka Glyph of Frostfire
			{ spellID = 31589, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Slow
			{ spellID = 12472, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, --Icy Veins
			{ spellID = 12042, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Arcane Power
			{ spellID = 45438, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, --Ice Block
			{ spellID = 66, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Invisibility
			{ spellID = 34295, size = 30, unitId = "player", caster = "all", filter = "BUFF" }, --Pyromaniac
			{ spellID = 11366, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Pyroblast
			{ spellID = 92315, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Pyroblast!
			{ spellID = 44457, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Living Bomb
			{ spellID = 12846, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Ignite
			{ spellID = 12357, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, --Impact
			{ spellID = 11129, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, --Combustion
			{ spellID = 22959, size = 30, unitId = "target", caster = "all", filter = "DEBUFF"}, --Critical Mass
			{ spellID = 33395, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, --Freeze
		},
		{
			Name = "Mage Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },
			
			{ spellID = 12536, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, --Clearcasting
			{ spellID = 79683, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, --Missiles
			{ spellID = 57761, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, --Brain Freeze
			{ spellID = 64343, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Impact
			{ spellID = 44448, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, --Hot Streak(improved)
			{ spellID = 44445, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, --Hot Streak
			{ spellID = 30451, size = 48, unitId = "player", caster = "player", filter = "DEBUFF" }, --Arcane Blast
            { spellID = 83074, size = 48, unitId = "player", caster = "player", filter = "BUFF"}, --Fingers Of Frost
			{ spellID = 31642, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, --Blazing Speed
		},
		{
			Name = "Focus",  
			Direction = "LEFT",
			Interval = 2,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },
			
            { spellID = 118, size = 36, unitId = "focus", caster = "player", filter = "DEBUFF" }, -- Sheep mage
			{ spellID = 92967, size = 36, unitId = "focus", caster = "all", filter = "BUFF" }, -- Remedy - Maloriak 
            { spellID = 79735, size = 36, unitId = "focus", caster = "all", filter = "BUFF" }, -- Converted Power - Arcanotron
		},
	},
	["PRIEST"] = { -------------------------------------------------------------------------------------------------------- Priest
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "iFilgerBuffPlayerHeal", 0, 24 },

			 { spellID = 588, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Inner Fire / Inneres Feuer
			{ spellID = 73413, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Inner Will / Innerer Wille
			{ spellID = 6346, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Fear Ward / Furchtzauberschutz

		},
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			{ spellID = 47585, size = 30, filter = "CD" }, --Dispersion
			{ spellID = 47788, size = 30, filter = "CD" }, --Guardian Spirit
			{ spellID = 88686, size = 30, filter = "CD" }, --Holy Word: Sanctuary
			{ spellID = 89485, size = 30, filter = "CD" }, --Inner Focus
			{ spellID = 47540, size = 30, filter = "CD" }, --Penance
			{ spellID = 34861, size = 30, filter = "CD" }, --Circle of Healing
			{ spellID = 33076, size = 30, filter = "CD" }, --Prayer of Mending
			{ spellID = 8122, size = 30, filter = "CD" }, --Psychic Scream
			{ spellID = 34433, size = 30, filter = "CD" }, -- Shadowfiend
			{ spellID = 87151, size = 30, filter = "CD" }, -- Archangel
			{ spellID = 19236, size = 30, filter = "CD" }, -- Desperate Prayer
			{ spellID = 88625, size = 30, filter = "CD" }, -- Penance
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },

			{ spellID = 47788, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Guardian Spirit
			{ spellID = 33206, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Pain Suppression
			{ spellID = 139, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Renew
			{ spellID = 17, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Power Word: Shield
			{ spellID = 89485, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Inner Focus
			{ spellID = 96267, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Strength of Soul
			{ spellID = 95799, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Empowered Shadow / Machterfüllte Schatten
			{ spellID = 586, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Fade / Verblassen
			{ spellID = 59889, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Borrowed Time
			{ spellID = 81208, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Chakra: Serenity
			{ spellID = 81206, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Chakra: Sanctuary
			{ spellID = 81209, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Chakra: Chastise
		},
	    {
			Name = "Priest Procs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			{ spellID = 88688, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, -- Surge of Light
			{ spellID = 63735, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Serendipity
			{ spellID = 81700, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Archangel
			{ spellID = 81662, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Evangelism
		},	
		{
			Name = "Buffs and Debuffs HEAL",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOPRIGHT", "iFilgerBuffDebuffHeal", 20, -22 },

			{ spellID = 41635, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Prayer of Mending / Gebet der Besserung
			{ spellID = 47788, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Guardian Spirit / Schutzgeist
			{ spellID = 33206, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Pain Suppression / Schmerzunterdrückung
			{ spellID = 17, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Power Word: Shield / Machtwort: Schild
			{ spellID = 139, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Renew / Erneuerung
			{ spellID = 6346, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Fear Ward / Furchtzauberschutz
			{ spellID = 77489, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Echo of Light / Echo des Lichts
			{ spellID = 15357, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Inspiration / Inspiration
			{ spellID = 77613, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Grace / Barmherzigkeit
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			{ spellID = 9484, size = 32, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Shackle Undead / Untote fesseln
			{ spellID = 8122, size = 32, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Psychic Scream / Psychischer Schrei
			{ spellID = 589, size = 32, unitId = "focus", caster = "player", filter = "DEBUFF" }, -- Shadow Word: Pain
			{ spellID = 2944, size = 32, unitId = "focus", caster = "player", filter = "DEBUFF" }, -- Devouring Plague
			{ spellID = 34914, size = 32, unitId = "focus", caster = "player", filter = "DEBUFF" }, -- Vampiric Touch
		},
		{	
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOM", "iFilgerProcDps", 0, 52 },

			{ spellID = 8092, size = 36, filter = "CD" }, -- Mind Blast
			{ spellID = 14914, size = 36, filter = "CD" }, -- Holy Fire
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "iFilgerBuffDps", 0, 22 },

			{ spellID = 77487, size = 36, unitId = "player", caster = "player", filter = "BUFF" }, -- Shadow Orb
			{ spellID = 95799, size = 36, unitId = "player", caster = "player", filter = "BUFF" }, -- Empowered Power
			{ spellID = 87118, size = 36, unitId = "player", caster = "player", filter = "BUFF" }, -- Dark Evangelism
			{ spellID = 87153, size = 36, unitId = "player", caster = "player", filter = "BUFF" }, -- Dark Archangel
			{ spellID = 47585, size = 36, unitId = "player", caster = "player", filter = "BUFF" }, -- Dispersion
			
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "iFilgerDebuffDps", 0, 22},

			{ spellID = 9484, size = 36, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Shackle undead
			{ spellID = 8122, size = 36, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Psychic Scream
			{ spellID = 589, size = 36, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Shadow Word: Pain
			{ spellID = 2944, size = 36, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Devouring Plague
			{ spellID = 34914, size = 36, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Vampiric Touch
		},
	},
	["WARLOCK"] = { -------------------------------------------------------------------------------------------------------- Warlock
		{
			Name = "Warlock Procs",
			Direction = "DOWN",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOP", "iFilgerProcs", -0, -23 },

			{ spellID = 89937, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- 4set11 bonus
			{ spellID = 79459, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Demon Soul: Imp
			{ spellID = 79462, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Demon Soul: Felguard
			{ spellID = 79460, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Demon Soul: Felhunter
			{ spellID = 64371, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Eradication
			{ spellID = 70840, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Devious Minds
			{ spellID = 85383, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Improved Soul Fire
			{ spellID = 47247, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Molten Core
			{ spellID = 63158, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Decimation
			{ spellID = 47258, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Backdraft
			{ spellID = 34936, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Backlash
			{ spellID = 30301, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Nether Protection
			{ spellID = 18095, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Nightfall
			{ spellID = 84254, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Burning Soul
			{ spellID = 47283, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, --Empowered Imp
			{ spellID = 17941, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, --Shadow Trance		
			{ spellID = 74434, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Soulburn / Seelenbrand
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerTargetCCDebuff", 0, 22},

			{ spellID = 5782, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Fear
			{ spellID = 710, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Banish
			{ spellID = 1490, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Curse of the Elements
			{ spellID = 1714, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Curse of Tongues
			{ spellID = 18223, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Curse of Exhaustion
			{ spellID = 980, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Bane of Agony
			{ spellID = 603, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Bane of Doom
			{ spellID = 30108, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Unstable Affliction
			{ spellID = 32395, size = 30, unitId = "target", caster = "player", filter = "BUFF" }, -- Shadow Embrace
			{ spellID = 172, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Corruption
			{ spellID = 348, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Immolate
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerTargetDoTDebuff", 58, 22},
			
			{ spellID = 702, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Curse of Weakness
			{ spellID = 48181, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Haunt
			{ spellID = 27243, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Seed of Corruption
			{ spellID = 5484, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Howl of Terror
			{ spellID = 6789, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Death Coil
			{ spellID = 1098, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Enslave Demon
			{ spellID = 54785, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Demon Charge
			{ spellID = 86000, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Curse of Gul'dan
			{ spellID = 86121, size = 30, unitId = "player", caster = "player", filter = "BUFF" }, -- Soul Swap
		},
        {
			Name = "Cooldown",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldown", 0, 22 },

			{ spellID = 29858, size = 33, "player", caster = "player", filter = "CD" }, -- Soul Shatter
			{ spellID = 6789, size = 33, "player", caster = "player", filter = "CD" }, -- Death Coil
			{ spellID = 48020, size = 33, "player", caster = "player", filter = "CD" }, -- Demonic Circle: Teleport
			{ spellID = 74434, size = 33, "player", caster = "player", filter = "CD" }, -- SoulBurn
			{ spellID = 77801, size = 33, "player", caster = "player", filter = "CD" }, -- Demon Soul
			{ spellID = 1122, size = 33, "player", caster = "player", filter = "CD" }, -- Infernal
			{ spellID = 79268, size = 33, "player", caster = "player", filter = "CD" }, -- Soul Harvest
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
--			IconSide = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			{ spellID = 5782, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Fear / Furcht
			{ spellID = 710, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Banish / Verbannen
		},
	},
	["DRUID"] = { -------------------------------------------------------------------------------------------------------- Druid
		{
			Name = "COOLDOWN",
			Direction = "UP",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			{ spellID = 78674, size = 32, filter = "CD" }, -- Starsurge / Sternensog
			{ spellID = 48505, size = 32, filter = "CD" }, -- Starfall / Sternenregen
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerBuffPlayerHeal", 0, 24 },

			{ spellID = 33763, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Lifebloom
			{ spellID = 774, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Rejuvenation
			{ spellID = 8936, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Regrowth
			{ spellID = 48438, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Wild Growth
			{ spellID = 48505, size = 32, unitId = "player", caster = "player", filter = "BUFF" }, -- Starfall / Sternenregen
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffTargetHeal", 0, 24 },

			{ spellID = 33763, size = 32, unitId = "target", caster = "player", filter = "BUFF" }, -- Lifebloom
			{ spellID = 774, size = 32, unitId = "target", caster = "player", filter = "BUFF" }, -- Rejuvenation
			{ spellID = 8936, size = 32, unitId = "target", caster = "player", filter = "BUFF" }, -- Regrowth
			{ spellID = 48438, size = 32, unitId = "target", caster = "player", filter = "BUFF" }, -- Wild Growth
		},
		{
			Name = "Druid Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			{ spellID = 16886, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Nature's Grace
			{ spellID = 100977, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Harmony / Harmonie (Healer Mastery Buff / Heiler Meisterschaftsbuff)
			{ spellID = 48518, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Eclipse (Lunar) / Mondfinsternis
			{ spellID = 48517, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Eclipse (Solar) / Sonnenfinsternis
			{ spellID = 93400, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Shooting Stars / Sternschnuppen
			{ spellID = 52610, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Savage Roar / Wildes Brüllen
			{ spellID = 80951, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Puverize / Puverisieren
			{ spellID = 61336, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Survival Instincts / Überlebensinstinkte
			{ spellID = 33891, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Tree of Life / Baum des Lebens
			{ spellID = 16870, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Clearcasting / Freizaubern
			{ spellID = 29166, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, -- Innervate / Anregen
			{ spellID = 22812, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Barkskin / Baumrinde
			{ spellID = 48391, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Owlkin Frenzy / Eulkin Raserei
			{ spellID = 81192, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Lunar Shower / Mondregen
			{ spellID = 69369, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Predetor's Swiftness
			{ spellID = 81022, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Stampede
			{ spellID = 50334, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Berserk
			{ spellID = 5217, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Tiger's Fury
			{ spellID = 63058, size = 48, unitId = "player", caster = "player", filter = "BUFF" }, -- Glyph of Barkskin
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOPRIGHT", "iFilgerTargetDebuff", 0, -24 },

			{ spellID = 22570, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Maim
			{ spellID = 2637, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Hibernate
			{ spellID = 339, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Entangling Roots
			{ spellID = 33786, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Cyclone
			{ spellID = 8921, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Moonfire
			{ spellID = 93402, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Sunfire
			{ spellID = 5570, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Insect Swarm
			{ spellID = 1822, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Rake
			{ spellID = 1079, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Rip
			{ spellID = 33745, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Lacerate
			{ spellID = 9007, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Pounce Bleed
			{ spellID = 33876, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Mangle
			{ spellID = 48506, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" }, -- Earth and Moon
			{ spellID = 770, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Faerie Fire
			{ spellID = 58180, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Infected Wounds
			{ spellID = 9005, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" }, -- Pounce 
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
--			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			{ spellID = 2637, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Hibernate / Winterschlaf
			{ spellID = 339, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Entangling Roots / Wucherwurzeln
			{ spellID = 33786, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" }, -- Cyclone / Wirbelsturm
		},
	},
	["HUNTER"] = { -------------------------------------------------------------------------------------------------------- Hunter
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			-- Rapid Fire
			{ spellID = 3045, size = 30, filter = "CD" },
			-- Feign Death
			{ spellID = 5384, size = 30, filter = "CD" },
		},	
		{
			Name = "Hunter Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			-- Lock and Load
			{ spellID = 56453, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Quick Shots
			{ spellID = 6150, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Steady Shot
			{ spellID = 53224, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rapid Fire
			{ spellID = 3045, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sic'Em
			{ spellID = 89388, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ready, Set, Aim / Auf die Plätze, Fertig, Zielen
			{ spellID = 82925, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fire! / Feuer!
			{ spellID = 82926, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician / Meister der Taktik
			{ spellID = 34837, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of the Wild / Ruf der Wildnis
			{ spellID = 53434, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },

			-- Wyvern Sting
			{ spellID = 19386, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Serpent Sting
			{ spellID = 1978, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Widow Venom / Witwentoxin
			{ spellID = 82654, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Black Arrow
			{ spellID = 3674, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Explosive Shot
			{ spellID = 53301, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hunter's Mark
			{ spellID = 1130, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Piercing Shots 
			{ spellID = 63468, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sniper Training / Scharfschützenübung
			{ spellID = 64420, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			-- Wyvern Sting / Wyverngift
			{ spellID = 19386, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot / Unterdrückender Schuss
			{ spellID = 34490, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},	
	["ROGUE"] = { -------------------------------------------------------------------------------------------------------- Rogue
		{
			Name = "Cooldowns",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOPLEFT", "iFilgerCooldowns", 0, -22 },

			-- Sprint
			{ spellID = 2983, size = 30, filter = "CD" },
			-- Cloak of Shadows
			{ spellID = 31224, size = 30, filter = "CD" },
			-- Tricks of the Trade
			{ spellID = 57934, size = 30, filter = "CD" },
			-- Kidney Shot
			{ spellID = 408, size = 30, filter = "CD" },
			-- ShadowStep
			{ spellID = 36554, size = 30, filter = "CD" },
			-- Shadow Dance
			{ spellID = 51713, size = 30, filter = "CD" },
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerPlayerBuff", 0, 22 },

			-- Sprint
			{ spellID = 2983, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cloak of Shadows
			{ spellID = 31224, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Adrenaline Rush
			{ spellID = 13750, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evasion
			{ spellID = 5277, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Envenom
			{ spellID = 32645, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Overkill
			{ spellID = 58426, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slice and Dice
			{ spellID = 5171, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tricks of the Trade
			{ spellID = 57934, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Turn the Tables
			{ spellID = 51627, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadow Dance
			{ spellID = 51713, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Killing Spree
			{ spellID = 51690, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shallow Insight
			{ spellID = 84745, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Moderate Insight
			{ spellID = 84746, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Deep Insight
			{ spellID = 84747, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerTargetDebuff", 0, 22 },

			-- Cheap shot
			{ spellID = 1833, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Kidney shot
			{ spellID = 408, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Blind
			{ spellID = 2094, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rupture
			{ spellID = 1943, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Garrote
			{ spellID = 703, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Expose Armor
			{ spellID = 8647, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Dismantle
			{ spellID = 51722, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Deadly Poison / Tödliches Gift
			{ spellID = 2818, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind-numbing Poison / Gedankenbenebelndes Gift
			{ spellID = 5760, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Crippling Poison / Verkrüppelndes Gift
			{ spellID = 3409, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Wound Poison / Wundgift
			{ spellID = 13218, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Find Weakness
			{ spellID = 91023, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hemorrhage
			{ spellID = 16511, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Glyph of Hemorrhage 
			{ spellID = 56807, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Vendetta
			{ spellID = 79140, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
--			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", "TOPRIGHT", 0, -22 },

			-- Blind / Blenden
			{ spellID = 2094, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Sap / Kopfnuss
			{ spellID = 6770, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Gouge / Solarplexus
			{ spellID = 1776, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
    },		
	["SHAMAN"] = { -------------------------------------------------------------------------------------------------------- Shaman
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "iFilgerBuffPlayerHeal", 0, 24 },

			-- Earth Shield / Erdschild
			{ spellID = 974, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Riptide / Springflut
			{ spellID = 61295, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lightning Shield / Blitzschlagschild
			{ spellID = 324, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Water Shield / Wasserschild
			{ spellID = 52127, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "iFilgerBuffTargetHeal", 0, 24 },

			-- Earth Shield / Erdschild
			{ spellID = 974, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Riptide / Springflut
			{ spellID = 61295, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			--Stoneclaw Totem
			{ spellID = 5730, size = 30, filter = "CD" },
			-- Grounding Totem
			{ spellID = 8177, size = 30, filter = "CD" },
			-- Unleash Elements
			{ spellID = 73680, size = 30, filter = "CD" },
			-- Shamanistic Rage
			{ spellID = 30823, size = 30, filter = "CD" },
		},	
		{
			Name = "Shaman Procs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			-- Maelstorm Weapon
			{ spellID = 53817, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16246, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tidal Waves
			{ spellID = 51562, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Focused Insight
			{ spellID = 77796, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unleash Life
			{ spellID = 73685, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },

			-- Shamanistic Rage
			{ spellID = 30823, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Elemental Mastery
			{ spellID = 16166, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Totem
			{ spellID = 77661, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Hex
			{ spellID = 51514, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Bind Elemental / Elementar binden
			{ spellID = 76780, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Storm Strike
			{ spellID = 17364, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth Shock
			{ spellID = 8042, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Shock
			{ spellID = 8056, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Flame Shock
			{ spellID = 8050, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Spiritwalker's Grace
			{ spellID = 79206, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "LEFT",
--			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			-- Earth Shield / Erdschild
			{ spellID = 974, size = 32, unitId = "focus", caster = "player", filter = "BUFF" },
			-- Hex / Verhexen
			{ spellID = 51514, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Bind Elemental / Elementar binden
			{ spellID = 76780, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},	
	["PALADIN"] = { -------------------------------------------------------------------------------------------------------- Paladin
		{
			Name = "Buffs and Debuffs",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerBuffPlayerHeal", 0, 24 },

			-- Beacon of Light -- player
			{ spellID = 53563, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Beacon of Light focus",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "TOPRIGHT", "iFilgerFocusBuffs", 0, -22 },

			-- Beacon of Light -- player
			{ spellID = 53563, size = 30, unitId = "focus", caster = "player", filter = "BUFF" },
			-- Hammer of Justice
			{ spellID = 853, size = 30, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Judgement
			{ spellID = 20271, size = 30, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffTargetHeal", 0, 24 },

			-- Beacon of Light
			{ spellID = 53563, size = 30, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Buffs and Debuffs",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },
 
			-- Long Arm of the Law
			{ spellID = 87173, size = 30, unitId = "player", caster = "all", filter = "BUFF" },
			-- Beacon of Light -- target
			{ spellID = 53563, size = 30, unitId = "target", caster = "player", filter = "BUFF" },
			-- Judgements of the Pure
			{ spellID = 53657, size = 30, unitId = "player", caster = "all", filter = "BUFF" },
			-- Judgements of the Just
			{ spellID = 68055, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hammer of Justice
			{ spellID = 853, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Seal of Truth Aka Censure
			{ spellID = 31803, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Divine Illumination
			{ spellID = 31842, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Plea
			{ spellID = 54428, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Holy Shield
			{ spellID = 20925, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inquisition
			{ spellID = 84963, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Zealotry
			{ spellID = 85696, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Avenging Wrath
			{ spellID = 31884, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
			-- Guardian of Ancient Kings (prot)
			{ spellID = 86659, size = 30, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Paladin Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			-- Grand Crusader
			{ spellID = 85416, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sacred Duty
			{ spellID = 85433, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Daybreak
			{ spellID = 88819, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Infusion of Light
			{ spellID = 53672, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Crusader
			{ spellID = 94686, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Art of War
			{ spellID = 87138, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hand of Light 
			{ spellID = 90174, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
		},
	},
	["WARRIOR"] = {  -------------------------------------------------------------------------------------------------------- Warrior
		{
			Name = "Warrior Procs",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, -63 },

			-- Sudden Death
			{ spellID = 52437, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slam!
			{ spellID = 46916, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Sword and Board
			{ spellID = 50227, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Reserve
			{ spellID = 64568, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victorious
			{ spellID = 32216, size = 48, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Spell Reflection / Zauberreflexion
			{ spellID = 23920, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victory Rush / Siegesrausch
			{ spellID = 34428, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Block / Schildblock
			{ spellID = 2565, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Last Stand / Letztes Gefecht
			{ spellID = 12975, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Wall / Schildwall
			{ spellID = 871, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Deadly Calm
			{ spellID = 85730, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inner Rage
			{ spellID = 1134, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Battle Trance
			{ spellID = 85742, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Incite
			{ spellID = 86627, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Taste for Blood
			{ spellID = 60503, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Meat Cleaver
			{ spellID = 85739, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rude Interruption
			{ spellID = 86663, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Executioner
			{ spellID = 90806, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 24 },

			-- Hamstring
			{ spellID = 1715, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rend
			{ spellID = 94009, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunder Armor
			{ spellID = 7386, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Thunder Clap
			{ spellID = 6343, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demoralizing Shout
			{ spellID = 1160, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demoralizing Roar
			{ spellID = 99, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Charge Stun / Sturmangriffsbetäubung
			{ spellID = 7922, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Throwdown Stun
			{ spellID = 85388, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shockwave / Schockwelle
			{ spellID = 46968, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Improved Hamstring / Verbesserte Kniesehne
			{ spellID = 23694, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Expose Armor / Rüstung schwächen (Rogue)
			{ spellID = 8647, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Infected Wounds / Infizierte Wunden (Druid)
			{ spellID = 48484, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frost Fever / Frostfieber (Death Knight)
			{ spellID = 55095, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Faerie Fire (Druid)
			{ spellID = 91565, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Demoralizing Roar / Demoralisierendes Gebrüll (Druid)
			{ spellID = 99, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness / Fluch der Schwäche (Warlock)
			{ spellID = 702, size = 30, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Colossus Smash
			{ spellID = 86346, size = 30, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Cooldown",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },
			
			-- recklesness
			{ spellID = 1719, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- throwdown
			{ spellID = 85388, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- berserker rage
			{ spellID = 18499, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- Death Wish
			{ spellID = 12292, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- Deadly Calm
			{ spellID = 85730, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- Retaliation
			{ spellID = 20230, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- Rallying Cry
			{ spellID = 97462, size = 30, unitId = "player", caster = "player", filter = "CD" },
			-- Shield Wall
			{ spellID = 871, size = 30, unitId = "player", caster = "player", filter = "CD" },
		},
	},		
-----------------------------------------------------------------------------------------------------------------------	
-- Credits to Sapz
-----------------------------------------------------------------------------------------------------------------------	
	["HUNTER/DRUID"] = {  -------------------------------------------------------------------------------------------------------- Hunt & Drood
		{
			Name = "Shivable Rage effects",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "BOTTOM", "iFilgerRage", "BOTTOM", 0, 22 },

			-----------------------------------
			-- Filger Enrage Shiveable stuff  -
			-----------------------------------

			-- Unholy Frenzy
			{ spellID = 49016, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Vengeance
			{ spellID = 76691, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Enrage
			{ spellID = 5229, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Savage Roar
			{ spellID = 52610, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Owlkin Frenzy
			{ spellID = 48391, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Berserker Rage *
			{ spellID = 18499, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Wrecking Crew  *
			{ spellID = 57519, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Death Wish  *
			{ spellID = 12292, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
			-- Bastion of Defense  *
			{ spellID = 29594, size = 40, unitId = "target", caster = "all", filter = "BUFF" },
		},	
	},	
-----------------------------------------------------------------------------------------------------------------------	
-- dont touch anything below or else ill ass rape you aight!
-----------------------------------------------------------------------------------------------------------------------	
	["ALL"] = {
		{
			Name = "Cataclysm debuff list by jasje", -- taken from aurawatch.lua
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,			
			setPoint = { "BOTTOMRIGHT", "iFilgerPveDeBuffs", 0, 22 },
			
-- Baradin Hold
			-- Consuming Darkness
            { spellID = 95173, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Meteor Slash / Meteorschlag (Argaloth)
			{ spellID = 88942, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
-- Blackwing Descent
		-- Magmaw
			-- Constricting Chains
            { spellID = 91911, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Parasitic Infection
            { spellID = 94679, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mangle
            { spellID = 94617, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Omintron Defense System	
			-- Poison Soaked Shell	
	        { spellID = 79835, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Conductor
			{ spellID = 91433, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Incineration Security Measure
			{ spellID = 91521, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Power Conversion - Arcanotron
            { spellID = 79729, size = 47, unitId = "focus", caster = "all", filter = "BUFF" },
		-- Maloriak	
			-- Flash Freeze
			{ spellID = 77699, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Biting Chill
			{ spellID = 77760, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Dark Sludge
			{ spellID = 92988, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- remedy -- for spellsteal 
			{ spellID = 77912, size = 47, unitId = "target", caster = "all", filter = "BUFF" },
			-- remedy -- for spellsteal  - focus
			{ spellID = 77912, size = 47, unitId = "focus", caster = "all", filter = "BUFF" },
		-- Atramedes
			-- Searing Flame
			{ spellID = 92423, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Roaring Flame
			{ spellID = 92485, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sonic Breath
			{ spellID = 92407, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Chimaeron	
			-- Break
			{ spellID = 82881, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Low Health
			{ spellID = 89084, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Nefarian	
			-- Shadow Conductor / Schattenleiter (Nefarian)
			{ spellID = 92053, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
-- The Bastion of Twilight
		--Valiona & Theralion
			-- Blackout
			{ spellID = 92878, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Devouring Flames
			{ spellID = 86840, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Engulfing Magic
			{ spellID = 86840, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Twilight Meteorite
			{ spellID = 86013, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Halfus Wyrmbreaker	
		    -- Malevolent Strikes
			{ spellID = 39171, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Twilight Ascendant Council
			-- Burning Blood
			{ spellID = 82662, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hydro Lance
			{ spellID = 92511, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Waterlogged
			{ spellID = 82762, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frozen
			{ spellID = 92505, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Flame Torrent
			{ spellID = 92518, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Rod
			{ spellID = 83099, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gravity Core
			{ spellID = 92075, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gravity Crush
			{ spellID = 92488, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Static Overload
			{ spellID = 92067, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frost Beacon
			{ spellID = 92307, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Cho'gall	
			-- Corruption: Accelerated
			{ spellID = 81836, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Malformation
			{ spellID = 82125, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Absolute
			{ spellID = 82170, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Sickness
			{ spellID = 93200, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		    -- Cho's Blast
		    { spellID = 86028, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gall's Blast
		    { spellID = 86029, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Sinestra
			-- Wrack
			{ spellID = 89435, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Essence of the Red
			{ spellID = 87946, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			
-- Throne of the Four Winds
	-- Conclave of Wind
		-- Nezir <Lord of the North Wind>
			-- Wind Chill
			{ spellID = 93123, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ice Patch
			{ spellID = 93131, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Anshal <Lord of the West Wind>
			-- Soothing Breeze
			{ spellID = 86206, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Toxic Spores
			{ spellID = 93122, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Rohash <Lord of the East Wind>
			-- Slicing Gale
			{ spellID = 93058, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Al'Akir
			-- Ice Storm
			{ spellID = 93260, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Rod
			{ spellID = 93295, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Static Shock / Statischer Schock (Al'Akir)
			{ spellID = 87873, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Acid Rain / Säureregen (Al'Akir)
			{ spellID = 93279, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
--      [[ INCOMPLETE ]] --
-- Firelands
        --Trash
			-- Melt Armor
			{ spellID = 99532, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },		
        --Shannox
            -- Magma Rupture
            { spellID = 99840, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Crystal Prison Trap 
            { spellID = 99837, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Jagged Tear
            { spellID = 99936, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Lord Rhyolith	
            -- Eruption
            { spellID = 98492, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Alysrazor	
            -- Molten Feather
            { spellID = 97128, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
            -- Wings of Flame
            { spellID = 98619, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
            -- Blazing Power
            { spellID = 99461, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Alysra's Razor
            { spellID = 100029, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Beth'tilac	
            -- The Widow's Kiss
            { spellID = 99476, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fixate (Heroic)
			{ spellID = 99526, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Volatile Poison (Heroic)
			{ spellID = 99278, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Baleroc	
            -- Torment
            { spellID = 99256, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Tormented
            { spellID = 99257, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Blaze of Glory
            { spellID = 99252, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Vital Flame
            { spellID = 99262, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
            -- Vital Spark
            { spellID = 99263, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
            -- Countdown
            { spellID = 99516, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
		-- Majordomo Staghelm	
            -- Searing Seeds
            { spellID = 98450, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Burning Orbs
            { spellID = 98451, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
		-- Ragnaros	
            -- Blazing Heat
            { spellID = 100460, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
            -- Burning Wound 
            { spellID = 101239, size = 47, unitId = "player", caster = "all", filter = "DEBUFF" },
    	},	
		{
			Name = "ENHANCEMENTS",
			Direction = "LEFT",
			Interval = 6,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = {  "TOPRIGHT", "iFilgerEnhancements",0,-22 },

		--Racial
			-- Berserking
			{ spellID = 26297, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Fury
			{ spellID = 33697, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Darkflight
			{ spellID = 68992, size = 48, unitId = "player", caster = "player", filter = "BUFF" },

		-- Trinket Procs
			-- Rageheart  / Heart of Rage
			{ spellID = 92345, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cleansing Tears / Läuternde Tränen (Tear of Blood)
			{ spellID = 91139, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fury of the Five Flights / Furor der fünf Schwärme
			{ spellID = 60314, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Witching Hour / Geisterstunde
			{ spellID = 90887, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart's Revelation / Erkenntnis des Herzens
			{ spellID = 91027, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart's Judgement / Richturteil des Herzens
			{ spellID = 91041, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Volcanic Destruction
			{ spellID = 89091, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soul Fragment / Seelenfragment (Necromatic Focus/Necrotischer Fokus)
			{ spellID = 96962, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Veil of Splashing / Moonwell Phial
			{ spellID = 101156, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blessing of the Moonwell / Moonwell Chalice
			{ spellID = 100403, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Charged Blows / Ricket's Magnetic Fireball
			{ spellID = 101515, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Matrix Restabilizer  / Matrix Restabilizer
			{ spellID = 96976, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Accelerated  / Vessel of Acceleration
			{ spellID = 96980, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancient Petrified Seed  / Ancient Petrified Seed
			{ spellID = 97009, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blessing of Khaz'goroth   / Apparatus of Khaz'goroth
			{ spellID = 96934, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of the Eternal Flame  / Essence of the Eternal Flame
			{ spellID = 97010, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fiery Quintessence  / Fiery Quintessence
			{ spellID = 97008, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victorious  / Jaws of Defeat
			{ spellID = 96907, size = 48, unitId = "player", caster = "player", filter = "BUFF", absID = true  },
			-- Mark of the Firelord  / Rune of Zeth
			{ spellID = 97007, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Devour  / The Hungerer
			{ spellID = 96911, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Celerity / Shard of Woe Heroic
			{ spellID = 91173, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			--Battle Magic (Stump of Time)
			{ spellID = 91047, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, 
			--Pattern of Light (Mandala of Stirring Patterns)
			{ spellID = 91192, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, 
			--Dire Magic (Bell of Enraging Resonance)
			{ spellID = 91007, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Weight of a Feather (Scales of Life)
			{ spellID = 96879, size = 48, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Weight of a Feather (Scales of Life Heroic)
			{ spellID = 97117, size = 48, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Titanic Power
			{ spellID = 96923, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blessing of the Shaper
			{ spellID = 96928, size = 48, unitId = "player", caster = "player", filter = "BUFF" },

		-- Tier 12 Boni
			-- Burning Rage
			{ spellID = 99233, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Enrage
			{ spellID = 14202, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Recklessness
			{ spellID = 1719, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Death Wish
			{ spellID = 12292, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			
		-- PvP Trinkets
			-- Call of Conquest / Badge of Conquest
			{ spellID = 99711, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of Dominance / Badge of Dominance
			{ spellID = 99712, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of Victory / Badge of Victory
			{ spellID = 99713, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tremendous Fortitude / Battlemaster Trinket S10-371
			{ spellID = 99714, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Conquest / Insignia of Conquest
			{ spellID = 99717, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Dominance / Insignia of Dominance
			{ spellID = 99719, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Victory / Insignia of Victory
			{ spellID = 99721, size = 48, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Engineering
			-- Hyperspeed Accelerators / Hypergeschwindigkeitsbeschleuniger
			{ spellID = 54758, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Synapse Springs / Synapsenfedern
			{ spellID = 96230, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nitro Boots ( or should I say Belt? )
			{ spellID = 54861, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Grounded Plasma Shield 
			{ spellID = 82626, size = 48, unitId = "player", caster = "player", filter = "BUFF" },
			-- Flintlocke's Woodchucker
			{ spellID = 99621, size = 48, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Tailoring
			-- Darkglow
			{ spellID = 55767, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Lightweave
			{ spellID = 75170, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Swordguard
			{ spellID = 55775, size = 48, unitId = "player", caster = "all", filter = "BUFF" },

		-- Item Enchants - Enchanting
			-- Heartsong / Gesang des Herzens
			{ spellID = 74224, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Avalanche / Lawine
			{ spellID = 74196, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hurricane / Hurrikan
			{ spellID = 74221, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			--Power Torrent
			{ spellID = 74241, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			--Landside
			{ spellID = 74245, size = 48, unitId = "player", caster = "all", filter = "BUFF" },

		-- Potions
			-- Speed / Geschwindigkeit - Potion of Speed
			{ spellID = 53908, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Wild Magic / Wilde Magie - Potion of Wild Magic
			{ spellID = 53909, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Earthen Armor / Irdene Rüstung - Earthen Potion
			{ spellID = 79475, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			--Volcanic Power
			{ spellID = 79476, size = 48, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Golemblood Potion
			{ spellID = 79634, size = 32, unitId = "player", caster = "player", filter = "BUFF" },

		-- External Buffs
			-- Tricks of the Trade
			{ spellID = 57934, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Power Infusion
			{ spellID = 10060, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Bloodlust
			{ spellID = 2825, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Heroism
			{ spellID = 52182, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Time Warp
			{ spellID = 80353, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Ancient Hysteria
			{ spellID = 90355, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			--Innervate
			{ spellID = 29166, size = 48, unitId = "player", caster = "all", filter = "BUFF"},
			--Lightwell
			{ spellID = 7001, size = 48, unitId = "player", caster = "all", filter = "BUFF"},
			-- Hand of Salvation
			{ spellID = 1038, size = 48, unitId = "player", caster = "all", filter = "BUFF" },
			-- Rallying Cry
			{ spellID = 97462, size = 48, unitId = "player", caster = "all", filter = "BUFF" },				
		},
		{
--[[       Tons of SpellIDs taken from LoseControl so credit to Kouri 
		    Here we track pvp buffs on our target                             ]]
			Name = "ENEMY PVP BUFF",
			Direction = "RIGHT",
			Interval = 6,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = {  "BOTTOMLEFT", "iFilgerPvpTargetDebuffs" ,0,22 },
			
			--[[ Druid ]]--
			--Innervate
			{ spellID = 29166, size = 48, unitId = "target", caster = "all", filter = "BUFF"},
			--Tiger's Fury
			{ spellID = 5217, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Barkskin
			{ spellID = 22812, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Berserk
			{ spellID = 50334, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Starfall
			{ spellID = 48505, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Warrior ]]--
			--Spell Reflection
			{ spellID = 23920, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Recklessness
			{ spellID = 1719, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Shield Wall
			{ spellID = 871, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Shield Block
			{ spellID = 2565, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Retaliation
			{ spellID = 20230, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Enraged Regeneration
			{ spellID = 55694, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Rallying Cry
			{ spellID = 97462, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Deadly Calm
			{ spellID = 85730, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Death Wish
			{ spellID = 12292, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Paladin ]]--
			--Divine Shield
			{ spellID = 642, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Freedom
			{ spellID = 1044, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Sacrifice
			{ spellID = 6940, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Aura Mastery
			{ spellID = 31821, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Hand of Protection
			{ spellID = 1022, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Divine Protection
			{ spellID = 498, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Avenging Wrath
			{ spellID = 31884, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Favor
			{ spellID = 31842, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Guardian
			{ spellID = 70940, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Holy Shield
			{ spellID = 20925, size = 48, unitId = "target", caster = "all", filter = "BUFF" },

            --[[ Hunter ]]--
			--Deterrence
            { spellID = 19263, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Death Knight ]]--
			-- Anti-Magic Shell
			{ spellID = 48707, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Lichborne
			{ spellID = 49039, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Icebound Fortitude
			{ spellID = 48792, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Shaman ]]--
			-- Grounding Totem Effect
			{ spellID = 8178, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Water Shield
			{ spellID = 52127, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Earth Shield
			{ spellID = 974, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Elemental Mastery
			{ spellID = 16166, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shamanistic Rage
			{ spellID = 30823, size = 48, unitId = "tagret", caster = "all", filter = "BUFF" },
			-- Feral Spirit
			{ spellID = 51533, size = 48, unitId = "target", caster = "all", filter = "BUFF" },

			--[[ Mage ]]--
			--Ice Block
			{ spellID = 45438, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Arcane Power
			{ spellID = 12042, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Icy Veins
			{ spellID = 12472, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Rouge ]]--
			--Cloak of Shadows
			{ spellID = 31224, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Evasion
			{ spellID = 5277, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			--Combat Readiness
			{ spellID = 74001, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Adrenaline Rush
			{ spellID = 13750, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Cold Blood
			{ spellID = 14177, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shadow Dance
			{ spellID = 51713, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Vendetta
			{ spellID = 79140, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			
			--[[ Priest ]]--
			-- Dispersion
			{ spellID = 47585, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Archangel
			{ spellID = 87151, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
			-- Power Infusion
			{ spellID = 10060, size = 48, unitId = "target", caster = "all", filter = "BUFF" },
		},
		{
		    -- Here we track pvp debuffs on ourself
			Name = "ENEMY PVP DEBUFF",
			Direction = "LEFT",
			Interval = 6,
			Mode = "ICON",
			BarWidth = 150,
			setPoint = {  "BOTTOMRIGHT", "iFilgerPvpPlayerDebuffs" ,0,22 },			
			
			--[[ Rogue ]]--
			--Kidney Shot
            { spellID = 408, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blind
            { spellID = 2094, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Sap
            { spellID = 6770, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Smoke Bomb
            { spellID = 76577, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Garrote - Silence
            { spellID = 1330, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Silenced - Improved Kick
            { spellID = 18425, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Dismantle
            { spellID = 51722, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Blade Twisting
            { spellID = 31125, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Crippling Poison
            { spellID = 3409, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Deadly Throw
            { spellID = 26679, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			
			--[[ Paladin ]]--
			--Hammer of Justice
		    { spellID = 853, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Seal of Justice
            { spellID = 20170, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Repentance
	        { spellID = 20066, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Holy Wrath
		    { spellID = 2812, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Turn Evil
            { spellID = 10326, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Avenger's Shield
	        { spellID = 31935, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Dazed - Avenger's Shield
            { spellID = 63529, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	

			--[[ Mage ]]--
			--Silenced - Improved Counterspell
            { spellID = 18469, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Polymorph
	        { spellID = 118, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Improved Polymorph
	        { spellID = 83047, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Deep Freeze
	        { spellID = 44572, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Impact
            { spellID = 12355, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Ring of Frost
	        { spellID = 82691, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Fiery Payback
	        { spellID = 64346, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Freeze (Water Elemental)
	        { spellID = 33395, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Frost Nova
            { spellID = 122, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Improved Cone of Cold
	        { spellID = 83302, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shattered Barrier
	        { spellID = 55080, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blast Wave
	        { spellID = 11113, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Cone of Cold
	        { spellID = 120, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostbolt
	        { spellID = 116, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostfire Bolt
	        { spellID = 44614, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Slow
            { spellID = 31589, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Death Kinght ]]--
			--Monstrous Blow (Super ghoul)
            { spellID = 91797, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Desecration
            { spellID = 55666, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Chains of Ice
	        { spellID = 45524, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Strangulate
	        { spellID = 47476, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Gnaw (Ghoul)
            { spellID = 47481, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hungering Cold
			{ spellID = 49203, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Chilblains
	        { spellID = 50040, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Dark Simulacrum
	        { spellID = 77606, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
        
		    --[[ Druid ]]--
			--Bash (also Shaman Spirit Wolf ability)
	        { spellID = 5211, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Cyclone
	        { spellID = 33786, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Maim
	        { spellID = 22570, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Pounce
	        { spellID = 9005, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Solar Beam
	        { spellID = 97547, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Entangling Roots
	        { spellID = 339, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Feral Charge Effect
	        { spellID = 45334, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Infected Wounds
	        { spellID = 58179, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Typhoon
	        { spellID = 61391, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Hunter ]]--
			--Freezing Trap Effect
	        { spellID = 3355, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Intimidation
	        { spellID = 24394, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Wyvern Sting
	        { spellID = 19386, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Silencing Shot
	        { spellID = 34490, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Scatter Shot
	        { spellID = 19503, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Counterattack
            { spellID = 19306, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Entrapment
	        { spellID = 19185, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Concussive Barrage
	        { spellID = 35101, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Concussive Shot
	        { spellID = 5116, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frost Trap Aura
	        { spellID = 13810, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Glyph of Freezing Trap
            { spellID = 61394, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Wing Clip
	        { spellID = 2974, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Sonic Blast (Bat)
	        { spellID = 50519, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Snatch (Bird of Prey)
	        { spellID = 50541, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Froststorm Breath (Chimera)
	        { spellID = 92380, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Pin (Crab)
            { spellID = 50245, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Tendon Rip (Hyena)
	        { spellID = 50271, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Bad Manner (Monkey)
	        { spellID = 90337, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Venom Web Spray (Silithid)
	        { spellID = 54706, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Web (Spider)
	        { spellID = 4167, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Priest ]]--
			--Mind Control
	        { spellID = 605, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Psychic Horror
            { spellID = 64044, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Psychic Scream
	        { spellID = 8122, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shackle Undead
	        { spellID = 9484, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Sin and Punishment
	        { spellID = 87204, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Paralysis
	        { spellID = 87194, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Mind Flay
            { spellID = 15407, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Shaman ]]--
			--Bind Elemental
	        { spellID = 76780, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Earthquake
	        { spellID = 61882, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Hex
	        { spellID = 51514, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Stoneclaw Stun
	        { spellID = 39796, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Earthgrab (Earth's Grasp)
            { spellID = 64695, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Freeze (Frozen Power)
	        { spellID = 63685, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Earthbind (5 second duration per pulse, but will keep re-applying the debuff as long as you stand within the pulse radius)
	        { spellID = 3600, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frost Shock
	        { spellID = 8056, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostbrand Attack
	        { spellID = 8034, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Warlock ]]--
			--Aura of Foreboding
	        { spellID = 93986, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Axe Toss (Felguard)
	        { spellID = 89766, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Banish
	        { spellID = 710, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Death Coil
            { spellID = 6789, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Demon Leap
	        { spellID = 54786, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Fear
	        { spellID = 5782, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Howl of Terror
	        { spellID = 5484, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Seduction (Succubus)
            { spellID = 6358, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shadowfury
	        { spellID = 30283, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Spell Lock (Felhunter)
	        { spellID = 24259, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Unstable Affliction
	        { spellID = 31117, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Aftermath
            { spellID = 18118, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Curse of Exhaustion
	        { spellID = 18223, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shadowsnare (Glyph of Shadowflame)
	        { spellID = 63311, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Warrior ]]--
			--Hamstring
	        { spellID = 1715, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Improved Hamstring
	        { spellID = 23694, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Charge Stun
	        { spellID = 7922, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Concussion Blow
            { spellID = 12809, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Heroic Leap
	        { spellID = 6544, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Intercept
	        { spellID = 20253, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Intimidating Shout
	        { spellID = 5246, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Shockwave
            { spellID = 46968, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Throwdown
	        { spellID = 85388, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Silenced - Gag Order
	        { spellID = 18498, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Disarm
	        { spellID = 676, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Piercing Howl
	        { spellID = 12323, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },

			--[[ Racials ]]--
			-- War Stomp
			{ spellID = 20549, size = 48, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
	},
}