
PlaterDB = {
	["profileKeys"] = {
		["Царева - Ревущий фьорд"] = "MainProfile",
		["Зёбинмонк - Ревущий фьорд"] = "Default",
		["Зёбинприст - Ревущий фьорд"] = "Default",
		["Зёбинатор - Ревущий фьорд"] = "Default",
		["Зёбинмаг - Ревущий фьорд"] = "Default",
		["Зёбинфейл - Ревущий фьорд"] = "Default",
		["Дайтемнеключ - Ревущий фьорд"] = "Default",
		["Уткасосубуй - Ревущий фьорд"] = "Default",
		["Наурчмо - Ревущий фьорд"] = "Default",
		["Зёбинпаладин - Ревущий фьорд"] = "Default",
		["Сашкинадашка - Ревущий фьорд"] = "Default",
		["Василец - Ревущий фьорд"] = "MyNewProfile",
		["Дебустерчмо - Ревущий фьорд"] = "Default",
		["Зёба - Ревущий фьорд"] = "MainProfile",
		["Никсиамчмо - Ревущий фьорд"] = "Default",
		["Зёбедам - Ревущий фьорд"] = "MyNewProfile",
		["Ппробник - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Зёба - Ревущий фьорд"] = {
			["captured_spells"] = {
				[21562] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Гидротатар-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Reorder Nameplate"] = 3,
				["Blockade Encounter"] = 1,
				["Aura Reorder"] = 1,
				["Attacking Specific Unit"] = 1,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1537884697,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 399,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539013601,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538066775,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1538429739,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538237586,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Small Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538256464,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543253273,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1547991413,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["ScriptType"] = 3,
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1539015649,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201849,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 190,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Name"] = "Fixate [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539187387,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Author"] = "Tecno-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Time"] = 1543250950,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [15]
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [15]
			},
			["aura_alpha"] = 0.849999964237213,
			["patch_version"] = 3,
			["minor_width_scale"] = 0.899999976158142,
			["plate_config"] = {
				["friendlyplayer"] = {
					["actorname_text_spacing"] = 9,
				},
				["friendlynpc"] = {
					["actorname_text_spacing"] = 9,
					["big_actortitle_text_size"] = 9,
				},
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
		},
		["MyNewProfile"] = {
			["tank"] = {
				["colors"] = {
					["aggro"] = {
						0, -- [1]
						0.686274509803922, -- [2]
						0.0196078431372549, -- [3]
						1, -- [4]
					},
					["nocombat"] = {
						0.301960784313726, -- [1]
						0.00392156862745098, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["anothertank"] = {
						1, -- [1]
						0, -- [2]
						0.905882352941177, -- [3]
						1, -- [4]
					},
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Buff Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit - Important"] = 5,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535473591,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1528748982,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1537397927,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533663248,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535417117,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048199,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048441,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1535815768,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1542816185,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Name"] = "Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Icon"] = 2000853,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1547991413,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [16]
			},
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["first_run2"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["Name"] = "No Target Alpha [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 132177,
					["LastHookEdited"] = "",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1990989,
					["LastHookEdited"] = "",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Monk Statue [Plater]",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
					},
					["Icon"] = 627607,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [16]
			},
			["last_news_time"] = 1543749097,
			["first_run3"] = true,
			["hook_auto_imported"] = {
				["Aura Reorder"] = 1,
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Jaina Encounter"] = 6,
				["Targetting Alpha"] = 3,
				["Players Targetting Amount"] = 4,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Blockade Encounter"] = 1,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["npc_cache"] = {
				[138972] = {
					"Облачный разрушитель клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[135903] = {
					"Воплощение глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[126451] = {
					"Клешнедроб", -- [1]
					"SarasIsland", -- [2]
				},
				[146650] = {
					"Часовая-ветеран", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[126963] = {
					"Гвиндра Громовой Молот", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139486] = {
					"Неболом", -- [1]
					"", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[56717] = {
					"Прыгопотам", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[145372] = {
					"Дикая призывательница луны", -- [1]
					"", -- [2]
				},
				[148443] = {
					"\"Защитобот\"", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138464] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132835] = {
					"Змея-лютоклык", -- [1]
					"", -- [2]
				},
				[147932] = {
					"Потревоженный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146653] = {
					"Прославленный охотник", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140768] = {
					"Гууру Разбиватель Гор", -- [1]
					"", -- [2]
				},
				[147933] = {
					"Геоактивный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[138466] = {
					"Обсидиановый дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[140769] = {
					"Золотая Жила", -- [1]
					"SarasIsland", -- [2]
				},
				[138978] = {
					"Гигант из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[127477] = {
					"Морская черепаха", -- [1]
					"Тол Дагор", -- [2]
				},
				[138467] = {
					"Обсидиановый драконор", -- [1]
					"SarasIsland", -- [2]
				},
				[134629] = {
					"Чешуйчатый наездник на кролуске", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138979] = {
					"Волномут из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[141282] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147935] = {
					"Азерцветовый ползун", -- [1]
					"", -- [2]
				},
				[140259] = {
					"Крупный рунокопытный олень", -- [1]
					"", -- [2]
				},
				[138468] = {
					"Обсидиановый заклинатель пламени", -- [1]
					"SarasIsland", -- [2]
				},
				[416] = {
					"Каптау", -- [1]
					"Горнило Штормов", -- [2]
				},
				[138980] = {
					"Налетчик из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[417] = {
					"Pryynum", -- [1]
					"Сверкающие копи", -- [2]
				},
				[147936] = {
					"Азерцветовый камнеспин", -- [1]
					"SarasIsland", -- [2]
				},
				[140260] = {
					"Рунокопытная олениха", -- [1]
					"", -- [2]
				},
				[146657] = {
					"Часовой-ветеран", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138981] = {
					"Оракул из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[141284] = {
					"Кул-тирасский смотритель приливов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131817] = {
					"Кроглот Зараженный", -- [1]
					"Подгнилье", -- [2]
				},
				[138470] = {
					"Обсидиановый дракон", -- [1]
					"", -- [2]
				},
				[145123] = {
					"Миара Песня Ночи", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[141285] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[123001] = {
					"Темновод", -- [1]
					"", -- [2]
				},
				[147938] = {
					"Азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140262] = {
					"Молодая рунокопытная олениха", -- [1]
					"", -- [2]
				},
				[148962] = {
					"Прожорливый охотник", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138983] = {
					"Волнолов из племени Грязного Плавника", -- [1]
					"", -- [2]
				},
				[11661] = {
					"Поджигатель", -- [1]
					"Огненные Недра", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140263] = {
					"Рунокопытный олень", -- [1]
					"", -- [2]
				},
				[61389] = {
					"Великий страж клана Каргеш", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[61453] = {
					"Му'Шиба", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[59598] = {
					"Малый ша", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[140264] = {
					"Рунокопытный олененок", -- [1]
					"", -- [2]
				},
				[59726] = {
					"Опасность", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[19668] = {
					"Исчадие Тьмы", -- [1]
					"Храм Котмогу", -- [2]
				},
				[131821] = {
					"Безликая дева", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140777] = {
					"Самоцветный исполин", -- [1]
					"SarasIsland", -- [2]
				},
				[138986] = {
					"Боргл Искатель", -- [1]
					"SarasIsland", -- [2]
				},
				[126969] = {
					"Тротак", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140266] = {
					"Колотый Рог", -- [1]
					"", -- [2]
				},
				[134893] = {
					"Паук-железнопут", -- [1]
					"", -- [2]
				},
				[131311] = {
					"Бушующий азерит", -- [1]
					"SarasIsland", -- [2]
				},
				[139755] = {
					"Первый помощник Макнелли", -- [1]
					"", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134894] = {
					"Железнопут-ткач", -- [1]
					"", -- [2]
				},
				[135406] = {
					"Ожившее золото", -- [1]
					"Гробница королей", -- [2]
				},
				[139756] = {
					"Бандитка Шейла", -- [1]
					"", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129529] = {
					"Задира из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138989] = {
					"Соленый Плавник", -- [1]
					"SarasIsland", -- [2]
				},
				[145898] = {
					"Избранная послушница", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[29264] = {
					"Дух ящера", -- [1]
					"Око Бури", -- [2]
				},
				[129786] = {
					"Океанская макрура", -- [1]
					"SarasIsland", -- [2]
				},
				[145644] = {
					"Бвонсамди", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[130298] = {
					"Элементаль воды", -- [1]
					"", -- [2]
				},
				[138224] = {
					"Странствующая вестница Света", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[134898] = {
					"Ядоклык-отшельник", -- [1]
					"", -- [2]
				},
				[147948] = {
					"Сгустившийся азерит", -- [1]
					"", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[148716] = {
					"Восставшая душа", -- [1]
					"Подгнилье", -- [2]
				},
				[134899] = {
					"Ядоклык-скрытень", -- [1]
					"", -- [2]
				},
				[137458] = {
					"Гниющая спора", -- [1]
					"Подгнилье", -- [2]
				},
				[130299] = {
					"Капля", -- [1]
					"", -- [2]
				},
				[134388] = {
					"Клубок змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134900] = {
					"Паук-ядоклык", -- [1]
					"", -- [2]
				},
				[131318] = {
					"Старейшина Ликса", -- [1]
					"Подгнилье", -- [2]
				},
				[145903] = {
					"Рыцарь Черной наковальни", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[134389] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129788] = {
					"Мясник из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138995] = {
					"Хранитель семян Унган", -- [1]
					"", -- [2]
				},
				[137204] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[137716] = {
					"Донный краб", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136181] = {
					"Вулкан", -- [1]
					"SarasIsland", -- [2]
				},
				[134390] = {
					"Песочная змея", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134902] = {
					"Тенеплетник", -- [1]
					"", -- [2]
				},
				[124927] = {
					"Цзюнь-Ти", -- [1]
					"", -- [2]
				},
				[135926] = {
					"Дымосерд", -- [1]
					"SarasIsland", -- [2]
				},
				[127486] = {
					"Офицер корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[134903] = {
					"Истощающий ужас", -- [1]
					"", -- [2]
				},
				[142324] = {
					"Дельфин-синеспин", -- [1]
					"", -- [2]
				},
				[134904] = {
					"Темнолов", -- [1]
					"", -- [2]
				},
				[134137] = {
					"Служитель храма", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138999] = {
					"Старейшина Ордол", -- [1]
					"", -- [2]
				},
				[126848] = {
					"Капитан Юдора", -- [1]
					"Вольная Гавань", -- [2]
				},
				[133627] = {
					"Талли Быстроцап", -- [1]
					"", -- [2]
				},
				[127488] = {
					"Маг огня корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138489] = {
					"Тень Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[140792] = {
					"Стервятник-ломоклюв", -- [1]
					"", -- [2]
				},
				[139001] = {
					"Ведмедь из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[147957] = {
					"Азеризалида", -- [1]
					"", -- [2]
				},
				[135931] = {
					"Камнегарь", -- [1]
					"", -- [2]
				},
				[146678] = {
					"Сторожевое древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139002] = {
					"Тотемист из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[145399] = {
					"Дикая призывательница звезд", -- [1]
					"", -- [2]
				},
				[135932] = {
					"Вулканар", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140794] = {
					"Когтешрам", -- [1]
					"", -- [2]
				},
				[139003] = {
					"Воин из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[50839] = {
					"Chrominia", -- [1]
					"Око Бури", -- [2]
				},
				[140795] = {
					"Мрачный Кружач", -- [1]
					"", -- [2]
				},
				[139004] = {
					"Шаман из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[127106] = {
					"Офицер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139005] = {
					"Следопыт из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[135167] = {
					"Призрачный берсерк", -- [1]
					"Гробница королей", -- [2]
				},
				[131585] = {
					"Порабощенная стражница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135935] = {
					"Владыка Магмарр", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134144] = {
					"Живой поток", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140797] = {
					"Тухлоклюв", -- [1]
					"", -- [2]
				},
				[139006] = {
					"Фурболг из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[141565] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131586] = {
					"Распорядитель банкета", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140798] = {
					"Скалокар", -- [1]
					"", -- [2]
				},
				[139007] = {
					"Дикий хищник", -- [1]
					"", -- [2]
				},
				[135169] = {
					"Тотем поглощения духа", -- [1]
					"Подгнилье", -- [2]
				},
				[141566] = {
					"Кишкодер из банды Резчиков", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131587] = {
					"Заколдованный капитан", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[57109] = {
					"Служитель Сомнения", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[138496] = {
					"Сумеречный драконаар", -- [1]
					"", -- [2]
				},
				[140799] = {
					"Ветролов", -- [1]
					"", -- [2]
				},
				[139008] = {
					"Древний терзатель", -- [1]
					"", -- [2]
				},
				[137473] = {
					"Капитан стражи Ату", -- [1]
					"Гробница королей", -- [2]
				},
				[138497] = {
					"Сумеречный чешуеклят", -- [1]
					"SarasIsland", -- [2]
				},
				[140800] = {
					"Облачнокрыл Падальщик", -- [1]
					"", -- [2]
				},
				[139009] = {
					"Дикий охотник", -- [1]
					"", -- [2]
				},
				[137474] = {
					"Король Тималджи", -- [1]
					"Гробница королей", -- [2]
				},
				[130307] = {
					"Нестабильный тайфун", -- [1]
					"", -- [2]
				},
				[130435] = {
					"Одурманенный вышибала", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[142336] = {
					"Осьминожек", -- [1]
					"SarasIsland", -- [2]
				},
				[138498] = {
					"Сумеречный дракон", -- [1]
					"", -- [2]
				},
				[134916] = {
					"Подвальный охотник", -- [1]
					"", -- [2]
				},
				[138499] = {
					"Сумеречный драконор", -- [1]
					"", -- [2]
				},
				[136964] = {
					"Арбалетчица из Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[147967] = {
					"Морпех 7-го легиона", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[130436] = {
					"Отдыхающий работник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134150] = {
					"Резчик рун Сорн", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138500] = {
					"Сумеречная чешуйчатая сестра", -- [1]
					"", -- [2]
				},
				[139012] = {
					"Дикий страж", -- [1]
					"", -- [2]
				},
				[147968] = {
					"Активный азерит", -- [1]
					"", -- [2]
				},
				[137989] = {
					"Бальзамировочный состав", -- [1]
					"Гробница королей", -- [2]
				},
				[140292] = {
					"Снегошкур-альфа", -- [1]
					"", -- [2]
				},
				[138501] = {
					"Сумеречный дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[146945] = {
					"Клубящееся порождение Бездны", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139013] = {
					"Бешеный лунный совух", -- [1]
					"", -- [2]
				},
				[139269] = {
					"Сумрачный ужас", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[133384] = {
					"Меректа", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[131849] = {
					"Обезумевший стрелок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140293] = {
					"Снегошкур-рычун", -- [1]
					"", -- [2]
				},
				[138502] = {
					"Владыка змеев Наровиак", -- [1]
					"", -- [2]
				},
				[147202] = {
					"Оживший азеритовый осколыш", -- [1]
					"SarasIsland", -- [2]
				},
				[126983] = {
					"Красавчик Харлан", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127111] = {
					"Боец на веслах из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[131850] = {
					"Обезумевший мастер выживания", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138247] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[127879] = {
					"Щитоносец из армии Зула", -- [1]
					"Атал'Дазар", -- [2]
				},
				[140295] = {
					"Волчонок-снегошкур", -- [1]
					"", -- [2]
				},
				[136713] = {
					"Работник с нагорья Арати", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[143622] = {
					"Дикий бес", -- [1]
					"Сверкающие копи", -- [2]
				},
				[123146] = {
					"Истерзанный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[139017] = {
					"Буйногрив", -- [1]
					"", -- [2]
				},
				[149508] = {
					"Натанос в ледяной глыбе", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139529] = {
					"Муклай", -- [1]
					"", -- [2]
				},
				[140297] = {
					"Нок-арак", -- [1]
					"", -- [2]
				},
				[132877] = {
					"Илошкур", -- [1]
					"", -- [2]
				},
				[139530] = {
					"Земляной стенолом", -- [1]
					"", -- [2]
				},
				[145927] = {
					"Призывательница звезд Эллана", -- [1]
					"", -- [2]
				},
				[127497] = {
					"Стражник корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139019] = {
					"Иглогрив", -- [1]
					"", -- [2]
				},
				[101398] = {
					"Ментальный демон", -- [1]
					"Храм Котмогу", -- [2]
				},
				[137484] = {
					"Король А'акул", -- [1]
					"Гробница королей", -- [2]
				},
				[145928] = {
					"Скавис Найтсталкер", -- [1]
					"", -- [2]
				},
				[134158] = {
					"Тенеликий защитник", -- [1]
					"Гробница королей", -- [2]
				},
				[138508] = {
					"Вортакс Несокрушимый", -- [1]
					"SarasIsland", -- [2]
				},
				[132879] = {
					"Кристальный великан", -- [1]
					"SarasIsland", -- [2]
				},
				[137485] = {
					"Одержимый кровью шпион", -- [1]
					"Гробница королей", -- [2]
				},
				[146185] = {
					"Огнежал-трутень", -- [1]
					"", -- [2]
				},
				[148488] = {
					"Неживой авгур", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[146186] = {
					"Огнежал-воин", -- [1]
					"", -- [2]
				},
				[138254] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[62358] = {
					"Оскверненная капля", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[56473] = {
					"Летящий Снег", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[146187] = {
					"Огнежал-покоритель", -- [1]
					"", -- [2]
				},
				[136208] = {
					"Стромгардский арбалетчик", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[134417] = {
					"Глубоководный ритуалист", -- [1]
					"Святилище Штормов", -- [2]
				},
				[129802] = {
					"Земляной яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139023] = {
					"Яростный Кровозев", -- [1]
					"", -- [2]
				},
				[126092] = {
					"Гладиатор из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[134418] = {
					"Утонувший вестник глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[61399] = {
					"Глинтрок-разведчик", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[137233] = {
					"Чумная жаба", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139536] = {
					"Зара'тик - трутень", -- [1]
					"SarasIsland", -- [2]
				},
				[78116] = {
					"Элементаль воды", -- [1]
					"Горнило Штормов", -- [2]
				},
				[129547] = {
					"Кастетник из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[59800] = {
					"Крик'тик-яростень", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[139025] = {
					"Лунная Песнь", -- [1]
					"", -- [2]
				},
				[139537] = {
					"Зара'тик-куньчун", -- [1]
					"", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[128652] = {
					"Вик'Гот", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139026] = {
					"Призыватель Затмения", -- [1]
					"", -- [2]
				},
				[139538] = {
					"Стенолом Ха'вик", -- [1]
					"", -- [2]
				},
				[129548] = {
					"Громила из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127757] = {
					"Оживленный почетный страж", -- [1]
					"Атал'Дазар", -- [2]
				},
				[126094] = {
					"Волногон из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[131863] = {
					"Раал Прожорливый", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138516] = {
					"Сумеречный мастер эволюции", -- [1]
					"", -- [2]
				},
				[132887] = {
					"Детеныш смертежала", -- [1]
					"", -- [2]
				},
				[139284] = {
					"Чумной знахарь", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[59545] = {
					"Золотой жук", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136214] = {
					"Говорящая с ветрами Хелдис", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136470] = {
					"Продавщица закусок", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[59801] = {
					"Крик'тик - направитель ветров", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[134935] = {
					"Мать Вишис", -- [1]
					"", -- [2]
				},
				[137238] = {
					"Арбалетчик Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[126095] = {
					"Вулисс", -- [1]
					"", -- [2]
				},
				[133912] = {
					"Кровавый осквернитель", -- [1]
					"Подгнилье", -- [2]
				},
				[151056] = {
					"Варанк'ул Могучий", -- [1]
					"Горнило Штормов", -- [2]
				},
				[147218] = {
					"Дух золота", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[127119] = {
					"Палубный матрос из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[129550] = {
					"Тихолапка из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[56731] = {
					"Перцовка", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[136984] = {
					"Ребан", -- [1]
					"Гробница королей", -- [2]
				},
				[131099] = {
					"Коварный путаник", -- [1]
					"", -- [2]
				},
				[139799] = {
					"Ученик Айронхалла", -- [1]
					"Святилище Штормов", -- [2]
				},
				[135961] = {
					"Глубинный крушитель", -- [1]
					"SarasIsland", -- [2]
				},
				[151058] = {
					"Бурлящая кровь", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139800] = {
					"Ученик призывательницы штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[135962] = {
					"Скальный яростень", -- [1]
					"SarasIsland", -- [2]
				},
				[151059] = {
					"Вечный страж", -- [1]
					"Горнило Штормов", -- [2]
				},
				[134939] = {
					"Щетинистый людоед", -- [1]
					"SarasIsland", -- [2]
				},
				[133660] = {
					"\"Бом-бот 9000\"", -- [1]
					"", -- [2]
				},
				[135963] = {
					"Элементаль земли", -- [1]
					"", -- [2]
				},
				[134940] = {
					"Щетинистый пронзатель", -- [1]
					"SarasIsland", -- [2]
				},
				[135964] = {
					"Гремящий землементаль", -- [1]
					"", -- [2]
				},
				[134173] = {
					"Оживленная капля", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140826] = {
					"Дух-чертополошник", -- [1]
					"", -- [2]
				},
				[134941] = {
					"Щетинистый паук", -- [1]
					"SarasIsland", -- [2]
				},
				[56924] = {
					"Рассвирепевший хозен-буян", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[134174] = {
					"Тенеликий колдун", -- [1]
					"Гробница королей", -- [2]
				},
				[140827] = {
					"Хихикающий чертополошник", -- [1]
					"", -- [2]
				},
				[134942] = {
					"Щетинистый паучок", -- [1]
					"", -- [2]
				},
				[139804] = {
					"Инспектор Торговой компании", -- [1]
					"", -- [2]
				},
				[129553] = {
					"Диномант Киш'о", -- [1]
					"Атал'Дазар", -- [2]
				},
				[147225] = {
					"Экстрактор азерита", -- [1]
					"SarasIsland", -- [2]
				},
				[137246] = {
					"Осадная машина Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139805] = {
					"Механическая гончая", -- [1]
					"", -- [2]
				},
				[136735] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139806] = {
					"Взрывотехник Торговой компании", -- [1]
					"", -- [2]
				},
				[56541] = {
					"Мастер Снежный Вихрь", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[136224] = {
					"Стромгардская заклинательница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133666] = {
					"Отвлекатор Головокружилки", -- [1]
					"", -- [2]
				},
				[61339] = {
					"Глинтрок-оракул", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[127124] = {
					"Официантка из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139808] = {
					"Дуболом из Торговой компании", -- [1]
					"", -- [2]
				},
				[123286] = {
					"Шулер из братства Южных Морей", -- [1]
					"", -- [2]
				},
				[134691] = {
					"Наэлектризованный дервиш", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139809] = {
					"Специалист по присвоению активов", -- [1]
					"", -- [2]
				},
				[135971] = {
					"Отступник-новобранец", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[45859] = {
					"Diamant", -- [1]
					"Око Бури", -- [2]
				},
				[136483] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[151068] = {
					"Головоногий жрец Бездны", -- [1]
					"Горнило Штормов", -- [2]
				},
				[135204] = {
					"Призрачный жрец-проклинатель", -- [1]
					"Гробница королей", -- [2]
				},
				[139810] = {
					"Менеджер среднего звена Торговой компании", -- [1]
					"", -- [2]
				},
				[127381] = {
					"Ильный краб", -- [1]
					"Тол Дагор", -- [2]
				},
				[140322] = {
					"Камнепанцирный страж роя", -- [1]
					"", -- [2]
				},
				[134437] = {
					"Робот-лекарь", -- [1]
					"", -- [2]
				},
				[140834] = {
					"Смеющееся пламя", -- [1]
					"SarasIsland", -- [2]
				},
				[56862] = {
					"Пьяный хозен-буян", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[139811] = {
					"Помощник менеджера", -- [1]
					"", -- [2]
				},
				[140067] = {
					"Рыжешкур-альфа", -- [1]
					"", -- [2]
				},
				[140835] = {
					"Хитрый огонек", -- [1]
					"", -- [2]
				},
				[134950] = {
					"Ужасный паук", -- [1]
					"", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139812] = {
					"Продюсер Торговой компании", -- [1]
					"", -- [2]
				},
				[140068] = {
					"Рыжешкур-рычун", -- [1]
					"", -- [2]
				},
				[140324] = {
					"Камнепанцирный собиратель", -- [1]
					"", -- [2]
				},
				[132904] = {
					"Тролль из племени Песчаного Черепа", -- [1]
					"", -- [2]
				},
				[147745] = {
					"\"Неукротимый\"", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[130325] = {
					"Глубоководный шустрый краб", -- [1]
					"", -- [2]
				},
				[140069] = {
					"Волк-рыжешкур", -- [1]
					"", -- [2]
				},
				[140325] = {
					"Камнепанцирный скарабей", -- [1]
					"", -- [2]
				},
				[137511] = {
					"Головорез из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139814] = {
					"Специалист по поглощениям Хаззл", -- [1]
					"", -- [2]
				},
				[123289] = {
					"Блестопанцирный смертохват", -- [1]
					"SarasIsland", -- [2]
				},
				[140838] = {
					"Злонамеренный поток", -- [1]
					"", -- [2]
				},
				[56799] = {
					"Крик'тик-бомбардир", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[11665] = {
					"Лавовый уничтожитель", -- [1]
					"Огненные Недра", -- [2]
				},
				[56927] = {
					"Озверевший хозен-тусовщик", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[122266] = {
					"Твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[130582] = {
					"Отчаявшийся негодяй", -- [1]
					"Тол Дагор", -- [2]
				},
				[150818] = {
					"Потревоженный сгусток крови", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[140839] = {
					"Дух воды", -- [1]
					"", -- [2]
				},
				[123290] = {
					"Блестопанцирный трещот", -- [1]
					"SarasIsland", -- [2]
				},
				[129559] = {
					"Дуэлянт из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[125977] = {
					"Тотем воскрешения", -- [1]
					"Атал'Дазар", -- [2]
				},
				[140329] = {
					"Ви'ликс Терзатель Трупов", -- [1]
					"", -- [2]
				},
				[883] = {
					"Олень", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139818] = {
					"Начальник охраны Дирк", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[123291] = {
					"Блестопанцирный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[144680] = {
					"Фрида Сталемуфель", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134701] = {
					"Кровавый образ", -- [1]
					"Подгнилье", -- [2]
				},
				[132910] = {
					"Визгун из племени Острогривов", -- [1]
					"", -- [2]
				},
				[147495] = {
					"Растарский ликтор", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[137516] = {
					"Захватчик дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130584] = {
					"Кровошип", -- [1]
					"", -- [2]
				},
				[140843] = {
					"Дух воздуха", -- [1]
					"", -- [2]
				},
				[132911] = {
					"Трогг из племени Галечников", -- [1]
					"", -- [2]
				},
				[137517] = {
					"Разрушительница из дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[141867] = {
					"Матрос", -- [1]
					"", -- [2]
				},
				[133935] = {
					"Оживший страж", -- [1]
					"Гробница королей", -- [2]
				},
				[140332] = {
					"Скрежебур", -- [1]
					"", -- [2]
				},
				[140077] = {
					"Крепкорук-топотун", -- [1]
					"", -- [2]
				},
				[140333] = {
					"Стальной Панцирь", -- [1]
					"", -- [2]
				},
				[137007] = {
					"Защитник Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[60447] = {
					"Крик'тик-саботажник", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[135472] = {
					"Заназал Мудрый", -- [1]
					"Гробница королей", -- [2]
				},
				[123293] = {
					"Королевский песчаный краб", -- [1]
					"", -- [2]
				},
				[140334] = {
					"Темночешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[146731] = {
					"Тотем зомбирующего порошка", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[56865] = {
					"Водный танцор", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[140335] = {
					"Темночешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[140847] = {
					"Дух земли", -- [1]
					"", -- [2]
				},
				[137521] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[59552] = {
					"Хозен-плакса", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[140336] = {
					"Темночешуйчатый крылатый змей", -- [1]
					"", -- [2]
				},
				[144942] = {
					"\"Разряжатор\"", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[135475] = {
					"Кула Живодерка", -- [1]
					"Гробница королей", -- [2]
				},
				[140337] = {
					"Детеныш темночешуйчатого крылатого змея", -- [1]
					"", -- [2]
				},
				[140849] = {
					"Вредный дух камня", -- [1]
					"", -- [2]
				},
				[133685] = {
					"Оскверненный дух", -- [1]
					"Подгнилье", -- [2]
				},
				[140338] = {
					"Защитник гнезда Джинка'ло", -- [1]
					"", -- [2]
				},
				[144944] = {
					"Алчный кровосос", -- [1]
					"SarasIsland", -- [2]
				},
				[132918] = {
					"Налетчик из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[133430] = {
					"Гений Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[135989] = {
					"Щитоносец из армии Зула", -- [1]
					"Атал'Дазар", -- [2]
				},
				[65310] = {
					"Тренировочная репа", -- [1]
					"Око Бури", -- [2]
				},
				[132919] = {
					"Гигант из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[59553] = {
					"Королева певчих птиц", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[133943] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[136246] = {
					"Стромгардский священник", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[144690] = {
					"Местра", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[132920] = {
					"Темный змей", -- [1]
					"", -- [2]
				},
				[133432] = {
					"Алхимик Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130333] = {
					"Пластинчатый василиск", -- [1]
					"SarasIsland", -- [2]
				},
				[140085] = {
					"Большой елень", -- [1]
					"", -- [2]
				},
				[135736] = {
					"Рвач", -- [1]
					"", -- [2]
				},
				[140086] = {
					"Елениха", -- [1]
					"", -- [2]
				},
				[144948] = {
					"Кожекрылый охотник", -- [1]
					"", -- [2]
				},
				[132922] = {
					"Порабощенный мурлок", -- [1]
					"", -- [2]
				},
				[56867] = {
					"Огненный плут", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[130334] = {
					"Пластинчатый взорень", -- [1]
					"SarasIsland", -- [2]
				},
				[140087] = {
					"Молодая елениха", -- [1]
					"", -- [2]
				},
				[140343] = {
					"Острое Крылышко", -- [1]
					"", -- [2]
				},
				[144693] = {
					"Мансрой Пламенный Кулак", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[144949] = {
					"Тенелюбивый хищник", -- [1]
					"", -- [2]
				},
				[132923] = {
					"Мурлок из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[59426] = {
					"Попрыгун", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[146485] = {
					"Невара Ночная Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[149556] = {
					"Вечный каратель", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[133436] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130335] = {
					"Пластинчатый кристалиск", -- [1]
					"SarasIsland", -- [2]
				},
				[140345] = {
					"Крик Бури", -- [1]
					"", -- [2]
				},
				[140857] = {
					"Нефритовый всполох", -- [1]
					"", -- [2]
				},
				[145975] = {
					"Молодой твердошкурый лось", -- [1]
					"", -- [2]
				},
				[140858] = {
					"Огневичок", -- [1]
					"SarasIsland", -- [2]
				},
				[145976] = {
					"Твердошкурый лось", -- [1]
					"", -- [2]
				},
				[138556] = {
					"Нечистый слизнюк", -- [1]
					"", -- [2]
				},
				[145977] = {
					"Исполинский твердошкурый лось", -- [1]
					"", -- [2]
				},
				[140092] = {
					"Островной Странник", -- [1]
					"", -- [2]
				},
				[138557] = {
					"Живая скверна", -- [1]
					"", -- [2]
				},
				[144954] = {
					"Кровояд", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135231] = {
					"Призрачный громила", -- [1]
					"Гробница королей", -- [2]
				},
				[138558] = {
					"Безликий", -- [1]
					"", -- [2]
				},
				[144955] = {
					"Зал'зи Кровоглот", -- [1]
					"", -- [2]
				},
				[145211] = {
					"Дракончик из стаи Громовой Чешуи", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140094] = {
					"Шипастый грязнорыл", -- [1]
					"", -- [2]
				},
				[146491] = {
					"Дух воздаяния", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138559] = {
					"Позабытый", -- [1]
					"", -- [2]
				},
				[129826] = {
					"Океанский клешнехват", -- [1]
					"SarasIsland", -- [2]
				},
				[130338] = {
					"Крокодидла", -- [1]
					"", -- [2]
				},
				[140095] = {
					"Кровавый грязнорыл", -- [1]
					"", -- [2]
				},
				[146492] = {
					"Дух ярости", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138560] = {
					"Безликий ужас", -- [1]
					"", -- [2]
				},
				[144957] = {
					"Шали'и", -- [1]
					"", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140096] = {
					"Вепрь-грязнорыл", -- [1]
					"", -- [2]
				},
				[59684] = {
					"Озверевший хозен-тусовщик", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[129699] = {
					"Людвиг фон Тортоллен", -- [1]
					"Вольная Гавань", -- [2]
				},
				[129827] = {
					"Океанский крошитель", -- [1]
					"SarasIsland", -- [2]
				},
				[135235] = {
					"Призрачная повелительница животных", -- [1]
					"Гробница королей", -- [2]
				},
				[140353] = {
					"Яркочешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[140609] = {
					"Жестокий мако", -- [1]
					"SarasIsland", -- [2]
				},
				[138818] = {
					"Вестник войны из дружины Кровавого Киля", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140354] = {
					"Яркочешуйчатый крылатый змей", -- [1]
					"", -- [2]
				},
				[138563] = {
					"Вудакс", -- [1]
					"", -- [2]
				},
				[129828] = {
					"Океанский щелкун", -- [1]
					"SarasIsland", -- [2]
				},
				[136005] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140355] = {
					"Яркочешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[138564] = {
					"Кшуун", -- [1]
					"", -- [2]
				},
				[138820] = {
					"Врайкул из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[137029] = {
					"Артиллерист", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136006] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134215] = {
					"Лоринас, Бегущий в сумраке", -- [1]
					"", -- [2]
				},
				[138565] = {
					"Ма'лут", -- [1]
					"", -- [2]
				},
				[138821] = {
					"Воительница из дружины Кровавого Киля", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135239] = {
					"Призрачная знахарка", -- [1]
					"Гробница королей", -- [2]
				},
				[134216] = {
					"Темная заклинательница Зарра", -- [1]
					"", -- [2]
				},
				[138566] = {
					"Нил'созз", -- [1]
					"", -- [2]
				},
				[138822] = {
					"Гарпунщица из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[135240] = {
					"Субстанция души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135496] = {
					"Ками Шестерикс", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136264] = {
					"Недоделанная мумия", -- [1]
					"Гробница королей", -- [2]
				},
				[138567] = {
					"Шаттот Каратель", -- [1]
					"", -- [2]
				},
				[138823] = {
					"Следопыт из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[135241] = {
					"Разоритель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[128551] = {
					"Мастиф братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138568] = {
					"Шак'шугун Поработитель", -- [1]
					"", -- [2]
				},
				[59494] = {
					"Пузыристый бражный хмелементаль", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[133963] = {
					"Подопытная крыса", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140360] = {
					"Яркая Спинка", -- [1]
					"", -- [2]
				},
				[138569] = {
					"Предвестник Вор'зукс", -- [1]
					"", -- [2]
				},
				[138825] = {
					"Ингатора Кровопийца", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[119724] = {
					"Приливный волноплеск", -- [1]
					"", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[136011] = {
					"Камнекров", -- [1]
					"", -- [2]
				},
				[138570] = {
					"Глашатай Раззаки", -- [1]
					"", -- [2]
				},
				[138826] = {
					"Лейкнир Смелый", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[145223] = {
					"Молодой дракон из стаи Громовой Чешуи", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136012] = {
					"Горус Несдвигаемый", -- [1]
					"SarasIsland", -- [2]
				},
				[140362] = {
					"Мерцающее Крылышко", -- [1]
					"", -- [2]
				},
				[138571] = {
					"Странствующая вестница Света", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[129832] = {
					"Хрустяк", -- [1]
					"", -- [2]
				},
				[145224] = {
					"Дракон из стаи Громовой Чешуи", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135245] = {
					"Крушитель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131407] = {
					"Громила Торговой компании", -- [1]
					"", -- [2]
				},
				[140107] = {
					"Разящий смертежал", -- [1]
					"", -- [2]
				},
				[12259] = {
					"Гееннас", -- [1]
					"Огненные Недра", -- [2]
				},
				[138828] = {
					"Берхильда Лютая", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134990] = {
					"Заряженная песчаная дьяволица", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[135246] = {
					"Лотти Колючка", -- [1]
					"", -- [2]
				},
				[131408] = {
					"Дуболом Торговой компании", -- [1]
					"", -- [2]
				},
				[138061] = {
					"Докер Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140620] = {
					"Харибдида Южного моря", -- [1]
					"", -- [2]
				},
				[144970] = {
					"Калдорай-лучница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134991] = {
					"Крушитель из племени Песчаной Бури", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[135247] = {
					"Варигг", -- [1]
					"", -- [2]
				},
				[135759] = {
					"Тотем земляной стены", -- [1]
					"Гробница королей", -- [2]
				},
				[144971] = {
					"Друид-древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139342] = {
					"Воин из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[135760] = {
					"Морпех 7-го легиона", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138063] = {
					"Пафосный курортник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138831] = {
					"Хорвульд Бич Морей", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[139343] = {
					"Рабочий из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[131411] = {
					"Ядовитый змей", -- [1]
					"SarasIsland", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138064] = {
					"Пафосная курортница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[65317] = {
					"Сян", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[138576] = {
					"Безликое щупальце", -- [1]
					"", -- [2]
				},
				[144973] = {
					"Калдорай-часовой", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[146253] = {
					"Брат Джозеф", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138577] = {
					"Сокрушающее щупальце", -- [1]
					"", -- [2]
				},
				[134739] = {
					"Голем-чистильщик", -- [1]
					"Гробница королей", -- [2]
				},
				[139345] = {
					"Кулу Шепот Смерти", -- [1]
					"", -- [2]
				},
				[135763] = {
					"Порождение Бездны", -- [1]
					"", -- [2]
				},
				[140113] = {
					"Ядожал", -- [1]
					"", -- [2]
				},
				[146766] = {
					"Большой змеиный тотем", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139346] = {
					"Говорящий с духами Галани", -- [1]
					"SarasIsland", -- [2]
				},
				[133461] = {
					"Жрец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138579] = {
					"Гигантское когтещупальце", -- [1]
					"", -- [2]
				},
				[145232] = {
					"Скалли", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139347] = {
					"Гола Берсерк", -- [1]
					"", -- [2]
				},
				[135765] = {
					"Тотем потоков", -- [1]
					"Гробница королей", -- [2]
				},
				[138068] = {
					"Пафосный курортник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138836] = {
					"Зара'тик - страж роя", -- [1]
					"", -- [2]
				},
				[139348] = {
					"Бага Ледяной Щит", -- [1]
					"SarasIsland", -- [2]
				},
				[133463] = {
					"Боевая машина Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146769] = {
					"Друид-хищница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138837] = {
					"Зара'тик - янтарный ваятель", -- [1]
					"", -- [2]
				},
				[134232] = {
					"Наемный убийца", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146770] = {
					"Друид-хищница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138838] = {
					"Зара'тик-богомол", -- [1]
					"SarasIsland", -- [2]
				},
				[140630] = {
					"Нарядный иглобрюх", -- [1]
					"", -- [2]
				},
				[138839] = {
					"Зара'тик - певец смерти", -- [1]
					"", -- [2]
				},
				[11668] = {
					"Повелитель огня", -- [1]
					"Огненные Недра", -- [2]
				},
				[140375] = {
					"Дюнный скарабей - роевик", -- [1]
					"", -- [2]
				},
				[140631] = {
					"Скат Южных морей", -- [1]
					"SarasIsland", -- [2]
				},
				[138840] = {
					"Зара'тик-пронзатель", -- [1]
					"", -- [2]
				},
				[149331] = {
					"Сияющий азерит", -- [1]
					"", -- [2]
				},
				[135258] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135770] = {
					"Старший сержант Слэйд", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140376] = {
					"Дюнный скарабей", -- [1]
					"", -- [2]
				},
				[140632] = {
					"Чешуйчатая черепаха", -- [1]
					"SarasIsland", -- [2]
				},
				[138841] = {
					"Зара'тик - певец войны", -- [1]
					"SarasIsland", -- [2]
				},
				[139097] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139353] = {
					"Неживой герой", -- [1]
					"SarasIsland", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140377] = {
					"Дюнный скарабей - собиратель", -- [1]
					"", -- [2]
				},
				[138842] = {
					"Та'кил Усилитель", -- [1]
					"", -- [2]
				},
				[139354] = {
					"Бутун Костеглод", -- [1]
					"", -- [2]
				},
				[140378] = {
					"Дюнный скарабей - страж роя", -- [1]
					"", -- [2]
				},
				[138843] = {
					"Вожак роя Скрак'ик", -- [1]
					"", -- [2]
				},
				[139355] = {
					"Гуран Инеистый Клинок", -- [1]
					"", -- [2]
				},
				[59051] = {
					"Раздор", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136797] = {
					"Головолом из племени Галечников", -- [1]
					"", -- [2]
				},
				[149335] = {
					"Беспокойный азерит", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[149591] = {
					"Растарский стрелок", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138845] = {
					"Командир Джо'вак", -- [1]
					"", -- [2]
				},
				[135007] = {
					"Страж сферы", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139357] = {
					"Шаркун из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[128434] = {
					"Ненасытный небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[148569] = {
					"Стихийный волнолом", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138846] = {
					"Янтарнокрылый ловец ума", -- [1]
					"", -- [2]
				},
				[138847] = {
					"Управляющий Боем Ка'ваз", -- [1]
					"", -- [2]
				},
				[56877] = {
					"Райгонн", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[17252] = {
					"AkraAshak", -- [1]
					"Сверкающие копи", -- [2]
				},
				[128435] = {
					"Ядовитый саурид", -- [1]
					"Атал'Дазар", -- [2]
				},
				[138848] = {
					"Танцующий с клинками Зорлак", -- [1]
					"SarasIsland", -- [2]
				},
				[19459] = {
					"Ripp", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139360] = {
					"Оживленный громила из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[138849] = {
					"Повелитель улья Викс'ик", -- [1]
					"", -- [2]
				},
				[137058] = {
					"Проклинательница Магода", -- [1]
					"", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138338] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[136804] = {
					"Щебнеспин", -- [1]
					"", -- [2]
				},
				[131431] = {
					"Автоматический инспектор по безопасности", -- [1]
					"", -- [2]
				},
				[140643] = {
					"Лютый йети-крепкорог", -- [1]
					"", -- [2]
				},
				[144993] = {
					"Бешеный чертополоховый медведь", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136806] = {
					"Камнемаг Баргг", -- [1]
					"", -- [2]
				},
				[149344] = {
					"Одержимый яростью азерит", -- [1]
					"", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[130485] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136295] = {
					"Утонувший обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136807] = {
					"Разведчик из племени Галечников", -- [1]
					"", -- [2]
				},
				[139110] = {
					"Искротворец", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[127799] = {
					"Дазар'айский почетный страж", -- [1]
					"Атал'Дазар", -- [2]
				},
				[133482] = {
					"Ползучая мина", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136297] = {
					"Забытый обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136809] = {
					"Камнеклык Пожиратель Гор", -- [1]
					"", -- [2]
				},
				[131436] = {
					"Избранная кровавая матрона", -- [1]
					"Подгнилье", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[136810] = {
					"Землегнев из племени Галечников", -- [1]
					"", -- [2]
				},
				[144231] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136811] = {
					"Метатель из племени Галечников", -- [1]
					"", -- [2]
				},
				[137067] = {
					"Защитница дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[3527] = {
					"Тотем исцеляющего потока", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139626] = {
					"Утопший матрос", -- [1]
					"Святилище Штормов", -- [2]
				},
				[144232] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[148582] = {
					"Штормовой страж", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[136812] = {
					"Геомант из племени Галечников", -- [1]
					"", -- [2]
				},
				[137068] = {
					"Кавалеристка с дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[151653] = {
					"Щупальце из Бездны", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[130488] = {
					"Механожокей", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[145001] = {
					"Ланара Лунный Сумрак", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138349] = {
					"Мстительный дух", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[149352] = {
					"Яркий азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[136047] = {
					"Ледосерд", -- [1]
					"", -- [2]
				},
				[144747] = {
					"Воплощение Па'ку", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134768] = {
					"Неутомимый песочный бегун", -- [1]
					"SarasIsland", -- [2]
				},
				[119103] = {
					"Черный головорез", -- [1]
					"", -- [2]
				},
				[149098] = {
					"Майев Песнь Теней", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[137328] = {
					"Элитный боец озаренных", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136049] = {
					"Саргассий", -- [1]
					"", -- [2]
				},
				[134514] = {
					"Глубинная сектантка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[149355] = {
					"Искаженный азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[137585] = {
					"Тотем хватки земли", -- [1]
					"", -- [2]
				},
				[139807] = {
					"Геодезист Торговой компании", -- [1]
					"", -- [2]
				},
				[131858] = {
					"Шипастый страж", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[147439] = {
					"Раскаленная гончая", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[129527] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[134914] = {
					"Подвальный паук", -- [1]
					"", -- [2]
				},
				[143215] = {
					"Косатка", -- [1]
					"", -- [2]
				},
				[56863] = {
					"Сонный хозен-буян", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[146493] = {
					"Дух бойни", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[144876] = {
					"\"Макакомучитель-3000\"", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[60208] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[140657] = {
					"Гигантский йети-крепкорог", -- [1]
					"", -- [2]
				},
				[61213] = {
					"Крик'тик-новобранец", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[126845] = {
					"Капитан Джолли", -- [1]
					"Вольная Гавань", -- [2]
				},
				[147440] = {
					"Пылающий огнестраж", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[55659] = {
					"Дикий бес", -- [1]
					"Око Бури", -- [2]
				},
				[135002] = {
					"Демонический тиран", -- [1]
					"Око Бури", -- [2]
				},
				[134005] = {
					"Сланцеед", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[56876] = {
					"Крик'тик-сапер", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[140658] = {
					"Жесткая Шкура", -- [1]
					"", -- [2]
				},
				[56754] = {
					"Лазурный змей", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[149358] = {
					"Гигантский азерцветовый кристалльник", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[119052] = {
					"Боевое знамя", -- [1]
					"Око Бури", -- [2]
				},
				[140358] = {
					"Зов Скорби", -- [1]
					"", -- [2]
				},
				[141938] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[59605] = {
					"Отупевший хозен-буян", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[130620] = {
					"Ледобоец Сераф", -- [1]
					"", -- [2]
				},
				[148262] = {
					"Приливный элементаль", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[59794] = {
					"Крик'тик - прерыватель чар", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[149359] = {
					"Азеритовое чудище", -- [1]
					"", -- [2]
				},
				[144941] = {
					"Воплощение Акунды", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146753] = {
					"Кул-тирасский морпех", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[141939] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129469] = {
					"Глубоководный ползун", -- [1]
					"", -- [2]
				},
				[59547] = {
					"Цзян", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[144754] = {
					"Фа'туул Устрашающий", -- [1]
					"Горнило Штормов", -- [2]
				},
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[149360] = {
					"Азеритовая глыба", -- [1]
					"", -- [2]
				},
				[66652] = {
					"Малая нестабильная энергия", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[147825] = {
					"Медик 7-го легиона", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146251] = {
					"Сестра Кэтрин", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[65362] = {
					"Служитель Сомнения", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[130621] = {
					"Заклинатель штормов Брайсон", -- [1]
					"", -- [2]
				},
				[140661] = {
					"Долинный Гром", -- [1]
					"", -- [2]
				},
				[56732] = {
					"Лю Пламенное Сердце", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[59544] = {
					"Кивающий тигр", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[146756] = {
					"Усиленная буря", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[149569] = {
					"Атал'дазарская почитательница", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[129470] = {
					"Глубоководный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[129598] = {
					"Вьючный мул из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140662] = {
					"Старый длинномех", -- [1]
					"", -- [2]
				},
				[138968] = {
					"Стальной зев клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[62360] = {
					"Оскверненная капля", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[132855] = {
					"Железнопут-быстролап", -- [1]
					"", -- [2]
				},
				[147827] = {
					"Морпех 7-го легиона", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146940] = {
					"Предмирный исказитель разума", -- [1]
					"Горнило Штормов", -- [2]
				},
				[144245] = {
					"Манта Южных морей", -- [1]
					"", -- [2]
				},
				[130622] = {
					"Заклинатель штормов Оран", -- [1]
					"", -- [2]
				},
				[56658] = {
					"Оскверненная капля", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[61387] = {
					"Цийлинь-стражник", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[69792] = {
					"Казуир", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139384] = {
					"Боец из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[147828] = {
					"Кавалеристка 7-го легиона", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138562] = {
					"Личинка из Бездны", -- [1]
					"", -- [2]
				},
				[129471] = {
					"Глубоководный пескорыск", -- [1]
					"", -- [2]
				},
				[129599] = {
					"Метатель ножей из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138993] = {
					"Гурлак", -- [1]
					"", -- [2]
				},
				[59804] = {
					"Хваткая ненависть", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[7448] = {
					"Химера", -- [1]
					"Горнило Штормов", -- [2]
				},
				[59808] = {
					"Вестник шторма Шадо-Пан", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[61340] = {
					"Глинтрок-проклинатель", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[133663] = {
					"Фанатичный охотник за головами", -- [1]
					"Подгнилье", -- [2]
				},
				[134012] = {
					"Надсмотрщик Аскари", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[59751] = {
					"Страж Шадо-Пан", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[144759] = {
					"Хранитель Дагда", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[69791] = {
					"Казуир", -- [1]
					"Горнило Штормов", -- [2]
				},
				[138997] = {
					"Безумный Гролаш", -- [1]
					"", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139813] = {
					"Старший продюсер Гикси", -- [1]
					"", -- [2]
				},
				[123287] = {
					"Сорвиголова из братства Южных Морей", -- [1]
					"", -- [2]
				},
				[134769] = {
					"Зазубренная клешня", -- [1]
					"", -- [2]
				},
				[129600] = {
					"Саурок из клана Соленой Чешуи", -- [1]
					"Вольная Гавань", -- [2]
				},
				[136828] = {
					"Воин из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[58803] = {
					"Остатки Ненависти", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[139387] = {
					"Насса Хладнокровный", -- [1]
					"", -- [2]
				},
				[56884] = {
					"Оскверненный Тажань Чжу", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[140357] = {
					"Ядовитый разоритель", -- [1]
					"", -- [2]
				},
				[139351] = {
					"Глашатай теней Анголо", -- [1]
					"SarasIsland", -- [2]
				},
				[122264] = {
					"Старая твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[146552] = {
					"Кул-тирасская заклинательница волн", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[56678] = {
					"Нефритовый Посох", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[136829] = {
					"Метательница топоров из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[145273] = {
					"Десница Ин'заши", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[129517] = {
					"Оживленный ящер", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132126] = {
					"Позолоченная жрица", -- [1]
					"Атал'Дазар", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[146553] = {
					"Кул-тирасский силач", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[100943] = {
					"Тотем земляной стены", -- [1]
					"Два Пика", -- [2]
				},
				[56472] = {
					"Благоухающий Лотос", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[136830] = {
					"Охотница за головами из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[145274] = {
					"Защитник Ялата", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139389] = {
					"Волшасис Стальная Чешуя", -- [1]
					"", -- [2]
				},
				[138992] = {
					"Пачкун из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[150136] = {
					"Безликий терзатель", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[146436] = {
					"Сирена-соблазнительница", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134214] = {
					"Клинок Бездны Келейн", -- [1]
					"", -- [2]
				},
				[140669] = {
					"Камнегривый ревун", -- [1]
					"", -- [2]
				},
				[136831] = {
					"Знахарь из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[131009] = {
					"Дух золота", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139390] = {
					"Чешуйчатый страж Саррис", -- [1]
					"", -- [2]
				},
				[135552] = {
					"Меченный смертью поработитель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150137] = {
					"Безликий поработитель", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[138572] = {
					"Генерал Увош", -- [1]
					"", -- [2]
				},
				[129602] = {
					"Головорез из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138623] = {
					"Аматет-лучник", -- [1]
					"", -- [2]
				},
				[136832] = {
					"Берсерк из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[137940] = {
					"Сторожевая акула", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[147787] = {
					"Боевой маг 7-го легиона", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[145616] = {
					"Король Растахан", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148522] = {
					"Ледяная глыба", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[145261] = {
					"Роскошь", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[126205] = {
					"Нажив-о-матик", -- [1]
					"", -- [2]
				},
				[136833] = {
					"Жрец яда из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[134786] = {
					"Песчаный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[135761] = {
					"Громовой тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[139392] = {
					"Саурок из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[136549] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[150139] = {
					"К'ткс, охотник из Бездны", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[134787] = {
					"Краб-иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[138369] = {
					"Футбомбная хулиганка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146813] = {
					"Гюнтер Серый", -- [1]
					"", -- [2]
				},
				[136834] = {
					"Охотник за скальпами Базуулу", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[59892] = {
					"Крик'тик-завоеватель", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[139393] = {
					"Cтраж гнезда из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[144963] = {
					"Воплощение Кимбула", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140078] = {
					"Горилла-крепкорук", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[148441] = {
					"Гном-гироинженер", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146894] = {
					"Кабалист из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[138626] = {
					"Аматет-приверженец", -- [1]
					"", -- [2]
				},
				[136835] = {
					"Кин'тога Зверобой", -- [1]
					"", -- [2]
				},
				[137091] = {
					"Послушница из Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139394] = {
					"Жрец топи из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[151630] = {
					"Кошмарный гной", -- [1]
					"Горнило Штормов", -- [2]
				},
				[140674] = {
					"Гулковой", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[131974] = {
					"Лейтенант Вален", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[95061] = {
					"Большой элементаль огня", -- [1]
					"Храм Котмогу", -- [2]
				},
				[138627] = {
					"Аматет-иерофант", -- [1]
					"", -- [2]
				},
				[134789] = {
					"Огромный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[129208] = {
					"Жуткий капитан Локвуд", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139395] = {
					"Хранитель топи из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[139651] = {
					"Глубинник из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[144767] = {
					"Воплощение Гонка", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140675] = {
					"Мать стаи Муго", -- [1]
					"", -- [2]
				},
				[148607] = {
					"Послушница Па'ку Кали'я", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138628] = {
					"Аматет-жрец", -- [1]
					"", -- [2]
				},
				[136837] = {
					"Ядомант Ант'су", -- [1]
					"", -- [2]
				},
				[126918] = {
					"Стрелок из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139396] = {
					"Стражник из клана Болотных Теней", -- [1]
					"SarasIsland", -- [2]
				},
				[139652] = {
					"Береговик из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[151098] = {
					"Темный отросток", -- [1]
					"Горнило Штормов", -- [2]
				},
				[146893] = {
					"Мистик из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[139539] = {
					"Тавок, Молот Императрицы", -- [1]
					"", -- [2]
				},
				[138629] = {
					"Викарий Джоса", -- [1]
					"SarasIsland", -- [2]
				},
				[136838] = {
					"Згордо Живодер", -- [1]
					"", -- [2]
				},
				[138255] = {
					"Наводчик корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139397] = {
					"Охотник из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[146911] = {
					"Чумная гончая клана Гнилой Плоти", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[59764] = {
					"Тотем целительного прилива", -- [1]
					"Горнило Штормов", -- [2]
				},
				[134024] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134280] = {
					"Воздаятель Баатун", -- [1]
					"", -- [2]
				},
				[148610] = {
					"Друид-древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[132745] = {
					"Ледочешуйчатый странник", -- [1]
					"", -- [2]
				},
				[135048] = {
					"Запачканный кровью поросенок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139398] = {
					"Убийца из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[56439] = {
					"Ша Сомнения", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[135816] = {
					"Мерзотень", -- [1]
					"Сверкающие копи", -- [2]
				},
				[134794] = {
					"Темный ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[56631] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[138631] = {
					"Землепроходец Квадим", -- [1]
					"", -- [2]
				},
				[134793] = {
					"Хребтосвет", -- [1]
					"", -- [2]
				},
				[135049] = {
					"Грознокрылый ворон", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139399] = {
					"Крушитель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[139655] = {
					"Провидец из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135817] = {
					"Зефир", -- [1]
					"", -- [2]
				},
				[128455] = {
					"Т'лонджа", -- [1]
					"Атал'Дазар", -- [2]
				},
				[148611] = {
					"Йору'ча", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138632] = {
					"Страж Азуда", -- [1]
					"", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Вольная Гавань", -- [2]
				},
				[137097] = {
					"Заклинатель с дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[149635] = {
					"Цветущий защитник", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139656] = {
					"Оракул из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135818] = {
					"Клубящийся солдат", -- [1]
					"", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
				},
				[134283] = {
					"Анахорет Ланна", -- [1]
					"", -- [2]
				},
				[138889] = {
					"Увульд Провидец", -- [1]
					"", -- [2]
				},
				[134795] = {
					"Скрытый отшельник", -- [1]
					"", -- [2]
				},
				[145026] = {
					"Проворный падальщик", -- [1]
					"", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139657] = {
					"Гарпунер из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135819] = {
					"Живое торнадо", -- [1]
					"", -- [2]
				},
				[148613] = {
					"Командир Броудсайд", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134284] = {
					"Падший вестник смерти", -- [1]
					"Подгнилье", -- [2]
				},
				[140861] = {
					"Пылевик", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134796] = {
					"Гигантский иглохват", -- [1]
					"", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127049] = {
					"Геодезист из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139658] = {
					"Темножитель из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[131726] = {
					"Гуннольф Яростный", -- [1]
					"SarasIsland", -- [2]
				},
				[136076] = {
					"Беспокойное облако", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[148614] = {
					"Кул-тирасский канонир", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138635] = {
					"Командир Хусан", -- [1]
					"", -- [2]
				},
				[58807] = {
					"Крупица Ненависти", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[130581] = {
					"Песочный глаз", -- [1]
					"", -- [2]
				},
				[149311] = {
					"Шандриса Оперенная Луна", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[143753] = {
					"Вазун Говорящий со звездами", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[131727] = {
					"Фенра Коварная", -- [1]
					"SarasIsland", -- [2]
				},
				[57080] = {
					"Проклятый свиток", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[148615] = {
					"Див'иан", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[128969] = {
					"Командир из корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145033] = {
					"Полярный охотник", -- [1]
					"", -- [2]
				},
				[133007] = {
					"Освобожденное чудовище", -- [1]
					"Подгнилье", -- [2]
				},
				[134932] = {
					"Злосетная мать стаи", -- [1]
					"", -- [2]
				},
				[139660] = {
					"Мурлок из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[131728] = {
					"Рауль Стойкий", -- [1]
					"SarasIsland", -- [2]
				},
				[138829] = {
					"Ингель Проворная", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132885] = {
					"Элементаль воздуха", -- [1]
					"", -- [2]
				},
				[140344] = {
					"Небесная Гадюка", -- [1]
					"", -- [2]
				},
				[136846] = {
					"Кровопийца из племени Песчаного Черепа", -- [1]
					"", -- [2]
				},
				[132074] = {
					"Надзиратель Крикс", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139405] = {
					"Заклинатель волн Сеззес'ан", -- [1]
					"", -- [2]
				},
				[139661] = {
					"Добытчик из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[131729] = {
					"Лико", -- [1]
					"SarasIsland", -- [2]
				},
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[148617] = {
					"Акунда Ревностная", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[145035] = {
					"Проворный лис", -- [1]
					"", -- [2]
				},
				[136847] = {
					"Темный охотник из племени Песчаного Черепа", -- [1]
					"", -- [2]
				},
				[137103] = {
					"Кровавый образ", -- [1]
					"Подгнилье", -- [2]
				},
				[133345] = {
					"Ленивый лаборант", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139662] = {
					"Заклинатель дождя из племени Гнилой Чешуи", -- [1]
					"", -- [2]
				},
				[136592] = {
					"Флинн Фэйрвинд", -- [1]
					"", -- [2]
				},
				[122605] = {
					"Окаменевший враг", -- [1]
					"", -- [2]
				},
				[148618] = {
					"Верховный друид Андрений", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[146827] = {
					"Дикая собака", -- [1]
					"", -- [2]
				},
				[136934] = {
					"Испытатель экспериментального оружия", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[123853] = {
					"Волшебница Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139407] = {
					"Клыкострах", -- [1]
					"", -- [2]
				},
				[139663] = {
					"Вязальщик камыша из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[59752] = {
					"Душитель Шадо-Пан", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[148619] = {
					"Проекция Акунды", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140431] = {
					"Скальный козел", -- [1]
					"", -- [2]
				},
				[146828] = {
					"Дикий щенок", -- [1]
					"", -- [2]
				},
				[132755] = {
					"Падальщик-ломоклюв", -- [1]
					"", -- [2]
				},
				[151144] = {
					"Hati", -- [1]
					"Сверкающие копи", -- [2]
				},
				[138996] = {
					"Говорящий с землей Джува", -- [1]
					"", -- [2]
				},
				[129227] = {
					"Азерокк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146829] = {
					"Несмертный страж", -- [1]
					"Горнило Штормов", -- [2]
				},
				[140432] = {
					"Скальный прыгун", -- [1]
					"SarasIsland", -- [2]
				},
				[144782] = {
					"Брат Брюн", -- [1]
					"", -- [2]
				},
				[144842] = {
					"Прибрежный краб", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[145228] = {
					"Валья", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140850] = {
					"Шаловливый землевик", -- [1]
					"", -- [2]
				},
				[140689] = {
					"Ползун-лютоклык", -- [1]
					"", -- [2]
				},
				[8889] = {
					"Надзиратель из клана Ярости Горна", -- [1]
					"Глубины Черной горы", -- [2]
				},
				[136083] = {
					"Забытый обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[130635] = {
					"Каменный яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138642] = {
					"Квалдир-разоритель", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134908] = {
					"Кровожвал", -- [1]
					"SarasIsland", -- [2]
				},
				[127019] = {
					"Тренировочный манекен", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139410] = {
					"Вис Бесшумный Клинок", -- [1]
					"", -- [2]
				},
				[136043] = {
					"Бракиш", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136250] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[146831] = {
					"Кул-тирасский вестник шторма", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148622] = {
					"Проекция Кимбула", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140690] = {
					"Гадюка-лютоклык", -- [1]
					"", -- [2]
				},
				[56762] = {
					"Юй-лун", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[139411] = {
					"Многозуб", -- [1]
					"SarasIsland", -- [2]
				},
				[56890] = {
					"Крик'тик-разведчик", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[99541] = {
					"Восставший тихоступ", -- [1]
					"Храм Котмогу", -- [2]
				},
				[61240] = {
					"Глинтрок-тихоступ", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[146320] = {
					"Прелат За'лан", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148623] = {
					"Проекция Гонка", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140691] = {
					"Гигантский лютоклык", -- [1]
					"", -- [2]
				},
				[12101] = {
					"Лавоменталь", -- [1]
					"Огненные Недра", -- [2]
				},
				[138481] = {
					"Хромит", -- [1]
					"SarasIsland", -- [2]
				},
				[139412] = {
					"Гашас", -- [1]
					"SarasIsland", -- [2]
				},
				[140434] = {
					"Скальный камнерог", -- [1]
					"SarasIsland", -- [2]
				},
				[135830] = {
					"Ярость штормов", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132760] = {
					"Равнинный ползун", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[148624] = {
					"Проекция Па'ку", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138645] = {
					"Квалдир - раздирательница душ", -- [1]
					"SarasIsland", -- [2]
				},
				[134807] = {
					"Древняя твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[145298] = {
					"Дикий пожиратель", -- [1]
					"", -- [2]
				},
				[139413] = {
					"Пророк оазиса из клана Болотных Теней", -- [1]
					"SarasIsland", -- [2]
				},
				[146834] = {
					"Некромант-магистр", -- [1]
					"", -- [2]
				},
				[129640] = {
					"Злобный портовый пес", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146322] = {
					"Стенолом Рокка", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148625] = {
					"Проекция Краг'вы", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138646] = {
					"Квалдир - призывательница туманов", -- [1]
					"", -- [2]
				},
				[146409] = {
					"Леди Джайна Праудмур", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138281] = {
					"Безликий осквернитель", -- [1]
					"Подгнилье", -- [2]
				},
				[139414] = {
					"Жрец топи Васс", -- [1]
					"SarasIsland", -- [2]
				},
				[139670] = {
					"Моргок", -- [1]
					"", -- [2]
				},
				[140694] = {
					"Жадная Пасть", -- [1]
					"", -- [2]
				},
				[134041] = {
					"Зараженный крестьянин", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[58810] = {
					"Фрагмент Ненависти", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[146835] = {
					"Вурдалак", -- [1]
					"", -- [2]
				},
				[56763] = {
					"Набирающий силы ша", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[26125] = {
					"Мозголов", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139415] = {
					"Слизешкур", -- [1]
					"SarasIsland", -- [2]
				},
				[136798] = {
					"Костегрыз из племени Галечников", -- [1]
					"", -- [2]
				},
				[137880] = {
					"Защитница Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139416] = {
					"Волшас", -- [1]
					"SarasIsland", -- [2]
				},
				[130638] = {
					"Кроколиск-злобнокус", -- [1]
					"", -- [2]
				},
				[138648] = {
					"Сигрид Ткачиха Покровов", -- [1]
					"", -- [2]
				},
				[139672] = {
					"Бармашлеп", -- [1]
					"SarasIsland", -- [2]
				},
				[126928] = {
					"Корсар из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135322] = {
					"Золотой Змей", -- [1]
					"Гробница королей", -- [2]
				},
				[129231] = {
					"Рикса Огневерт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[135834] = {
					"Пагубное облако", -- [1]
					"", -- [2]
				},
				[130639] = {
					"Злобнокус-пожиратель", -- [1]
					"", -- [2]
				},
				[144071] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138649] = {
					"Вульф Буребережный", -- [1]
					"", -- [2]
				},
				[136858] = {
					"Джан'ли", -- [1]
					"", -- [2]
				},
				[61945] = {
					"Стальная пасть клана Гуртан", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[129232] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137626] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137882] = {
					"Арбалетчица из Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[146326] = {
					"Охотник за головами Гал'вана", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[136347] = {
					"Ученица жрецов моря", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138650] = {
					"Затерявшийся среди волн защитник", -- [1]
					"SarasIsland", -- [2]
				},
				[131486] = {
					"Верховный экзарх Туралион", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[145303] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139418] = {
					"Недвижный", -- [1]
					"SarasIsland", -- [2]
				},
				[137627] = {
					"Сжимающий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134791] = {
					"Сияющий ползун", -- [1]
					"", -- [2]
				},
				[132892] = {
					"Ветролист", -- [1]
					"", -- [2]
				},
				[56636] = {
					"Командир Ри'мок", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[138651] = {
					"Сильверия Заклинательница Рифов", -- [1]
					"", -- [2]
				},
				[56764] = {
					"Всепоглощающий ша", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[145304] = {
					"Дикий душитель", -- [1]
					"", -- [2]
				},
				[137614] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139675] = {
					"Искатель Глубин", -- [1]
					"", -- [2]
				},
				[140108] = {
					"Скорпид-смертежал", -- [1]
					"", -- [2]
				},
				[148631] = {
					"Неразорвавшийся заряд", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[130640] = {
					"Злобнокус-хвататель", -- [1]
					"", -- [2]
				},
				[146840] = {
					"Скелет-страж", -- [1]
					"", -- [2]
				},
				[130896] = {
					"Бочка черной пелены", -- [1]
					"Вольная Гавань", -- [2]
				},
				[145305] = {
					"Дикий громила", -- [1]
					"", -- [2]
				},
				[148120] = {
					"Кул-тирасский морпех", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139676] = {
					"Говорящий с волнами Ормрг", -- [1]
					"SarasIsland", -- [2]
				},
				[135838] = {
					"Пепловей", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[59835] = {
					"Крик'тик-роевик", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[140444] = {
					"Матерый мускусный як", -- [1]
					"", -- [2]
				},
				[138653] = {
					"Хосвир Гниющий Остов", -- [1]
					"SarasIsland", -- [2]
				},
				[149144] = {
					"Приливный элементаль Джайны", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[61946] = {
					"Призыватель бури из клана Хартак", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[139421] = {
					"Гекказ Мшистая Чешуя", -- [1]
					"", -- [2]
				},
				[139677] = {
					"Глашатай пучины", -- [1]
					"SarasIsland", -- [2]
				},
				[135839] = {
					"Болотный газовик", -- [1]
					"", -- [2]
				},
				[58108] = {
					"Крик'тик-разведчик", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[122986] = {
					"Дикий небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[138647] = {
					"Хъяна Вестница Туманов", -- [1]
					"", -- [2]
				},
				[147098] = {
					"Дух Сюэня", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[136864] = {
					"Угуу Устрашающий", -- [1]
					"", -- [2]
				},
				[122965] = {
					"Вол'каал", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139678] = {
					"Брегоступ", -- [1]
					"SarasIsland", -- [2]
				},
				[127315] = {
					"Тотем воскрешения", -- [1]
					"Атал'Дазар", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[56637] = {
					"Ук-Ук", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[144796] = {
					"Главный механик Меггакрут", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[56765] = {
					"Разрушительный ша", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[123292] = {
					"Блестопанцирный хвататель", -- [1]
					"SarasIsland", -- [2]
				},
				[135329] = {
					"Матрона Бриндл", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136799] = {
					"Скалолом", -- [1]
					"", -- [2]
				},
				[145402] = {
					"Одичавшая безумица", -- [1]
					"", -- [2]
				},
				[61243] = {
					"Геккан", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[136353] = {
					"Огромное щупальце", -- [1]
					"Святилище Штормов", -- [2]
				},
				[146844] = {
					"Ольфкриг Подчиненный", -- [1]
					"", -- [2]
				},
				[140670] = {
					"Камнегривый силач", -- [1]
					"", -- [2]
				},
				[136044] = {
					"Ядозыбь", -- [1]
					"", -- [2]
				},
				[137764] = {
					"Опытная волшебница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139680] = {
					"Ловец из темных глубин", -- [1]
					"SarasIsland", -- [2]
				},
				[132893] = {
					"Дух огня", -- [1]
					"SarasIsland", -- [2]
				},
				[144286] = {
					"Управляющая активами", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146843] = {
					"Шипастый вурдалак", -- [1]
					"", -- [2]
				},
				[146845] = {
					"Рваный Джаред", -- [1]
					"", -- [2]
				},
				[124583] = {
					"Гранатовый червь", -- [1]
					"SarasIsland", -- [2]
				},
				[61947] = {
					"Крушитель ребер клана Каргеш", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[139425] = {
					"Бешеная наседка", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140443] = {
					"Агрессивный мускусный як", -- [1]
					"", -- [2]
				},
				[148584] = {
					"Верховный маг Мордент Вечерняя Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134139] = {
					"Храмовник из Святилища Штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[146833] = {
					"Некромантка-заклинательница", -- [1]
					"", -- [2]
				},
				[148893] = {
					"Замученная душа", -- [1]
					"Подгнилье", -- [2]
				},
				[122967] = {
					"Жрица Алун'за", -- [1]
					"Атал'Дазар", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[147614] = {
					"Шаман стихий из клана Черного Железа", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[130661] = {
					"Геомант Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146832] = {
					"Некромант-послушник", -- [1]
					"", -- [2]
				},
				[136100] = {
					"Утонувший обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138659] = {
					"Оживленная гончая", -- [1]
					"", -- [2]
				},
				[146847] = {
					"Призывательница Ланиелла", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[56766] = {
					"Нестабильная энергия", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[32517] = {
					"Гдемоясасис", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139659] = {
					"Оракул из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[133379] = {
					"Гюрзис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[135764] = {
					"Взрывной тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[136688] = {
					"Фанатичный бурильщик", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146881] = {
					"Ведун Бринвульф", -- [1]
					"", -- [2]
				},
				[65402] = {
					"Молниеносный клинок клана Гуртан", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[134822] = {
					"Матриарх пластинчатых василисков", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[138660] = {
					"Туманная гончая", -- [1]
					"", -- [2]
				},
				[122968] = {
					"Язма", -- [1]
					"Атал'Дазар", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[135846] = {
					"Песочная змея", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[130319] = {
					"Гоплит из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[140452] = {
					"Остророг Дремлющий", -- [1]
					"", -- [2]
				},
				[146849] = {
					"Владычица духов Ровена", -- [1]
					"", -- [2]
				},
				[145058] = {
					"Тенеперый ворон", -- [1]
					"", -- [2]
				},
				[140430] = {
					"Скальный козлик", -- [1]
					"SarasIsland", -- [2]
				},
				[139429] = {
					"Каменный воин", -- [1]
					"", -- [2]
				},
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[126423] = {
					"Коралловый краб", -- [1]
					"", -- [2]
				},
				[134056] = {
					"Аква'сирр", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140995] = {
					"Руинный охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[146850] = {
					"Великий магистр Ульрих", -- [1]
					"", -- [2]
				},
				[145059] = {
					"Хитрый темнокрыл", -- [1]
					"", -- [2]
				},
				[138888] = {
					"Ворожей из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[122969] = {
					"Занчульская знахарка", -- [1]
					"Атал'Дазар", -- [2]
				},
				[56511] = {
					"Оскверненная живая вода", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[129366] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[11673] = {
					"Древняя гончая недр", -- [1]
					"Огненные Недра", -- [2]
				},
				[146112] = {
					"Чернильная Шкура", -- [1]
					"", -- [2]
				},
				[131527] = {
					"Лорд Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[145060] = {
					"Чудовищный тенеперый ворон", -- [1]
					"", -- [2]
				},
				[139459] = {
					"Каменный солдат", -- [1]
					"", -- [2]
				},
				[139431] = {
					"Хранитель склепа", -- [1]
					"", -- [2]
				},
				[144160] = {
					"Головорез Краснокрюк", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139014] = {
					"Дикий лунный искатель", -- [1]
					"", -- [2]
				},
				[134058] = {
					"Призывательница штормов Фэй", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140455] = {
					"Колючешкурый бычок", -- [1]
					"", -- [2]
				},
				[146852] = {
					"Конрад Поработитель", -- [1]
					"", -- [2]
				},
				[145061] = {
					"Визжащий темнокрыл", -- [1]
					"", -- [2]
				},
				[138438] = {
					"Разрыватель волн Сталеклык", -- [1]
					"", -- [2]
				},
				[122970] = {
					"Крадущийся теневой клинок", -- [1]
					"Атал'Дазар", -- [2]
				},
				[59518] = {
					"Раздувшийся бражный хмелементаль", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[129367] = {
					"Воин бури из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137625] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140456] = {
					"Колючешкурый мускен", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[148894] = {
					"Заблудшая душа", -- [1]
					"Подгнилье", -- [2]
				},
				[140968] = {
					"Гранатовый кусатель", -- [1]
					"SarasIsland", -- [2]
				},
				[135562] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[147621] = {
					"Боец авангарда из клана Черного Железа", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[133870] = {
					"Больной плеточник", -- [1]
					"Подгнилье", -- [2]
				},
				[122971] = {
					"Дазар'айский сокрушитель", -- [1]
					"Атал'Дазар", -- [2]
				},
				[134060] = {
					"Лорд Штормсонг", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140457] = {
					"Колючешкурая корова", -- [1]
					"", -- [2]
				},
				[144807] = {
					"Прожорливый охотник", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134828] = {
					"Воденыш", -- [1]
					"Святилище Штормов", -- [2]
				},
				[56448] = {
					"Мудрый Марис", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[131246] = {
					"Аланаа", -- [1]
					"", -- [2]
				},
				[139690] = {
					"Океанский призыватель волн", -- [1]
					"SarasIsland", -- [2]
				},
				[139946] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140106] = {
					"Смертежал - страж кладки", -- [1]
					"", -- [2]
				},
				[140458] = {
					"Колючешкурый бык", -- [1]
					"", -- [2]
				},
				[146855] = {
					"Акина", -- [1]
					"", -- [2]
				},
				[140970] = {
					"Скальный разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[98035] = {
					"Зловещий охотник", -- [1]
					"Сверкающие копи", -- [2]
				},
				[126424] = {
					"Коралловый приливный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[139691] = {
					"Океанский заклинатель штормов", -- [1]
					"SarasIsland", -- [2]
				},
				[122984] = {
					"Дазар'айский колосс", -- [1]
					"Атал'Дазар", -- [2]
				},
				[61245] = {
					"Тотем конденсации", -- [1]
					"Горнило Штормов", -- [2]
				},
				[61246] = {
					"Глинтрок-погромщик", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[145065] = {
					"Оперившийся темнокрыл", -- [1]
					"", -- [2]
				},
				[134788] = {
					"Иглохват-твердопанцирник", -- [1]
					"SarasIsland", -- [2]
				},
				[122972] = {
					"Дазар'айский авгур", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139692] = {
					"Океанский старейшина", -- [1]
					"SarasIsland", -- [2]
				},
				[129369] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134063] = {
					"Брат Айронхалл", -- [1]
					"Святилище Штормов", -- [2]
				},
				[134423] = {
					"Обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[145064] = {
					"Огонек", -- [1]
					"", -- [2]
				},
				[139011] = {
					"Дикий защитник", -- [1]
					"", -- [2]
				},
				[144776] = {
					"Айрин Быстроногая", -- [1]
					"", -- [2]
				},
				[134912] = {
					"Лиловый ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[122076] = {
					"Снежная сфера", -- [1]
					"", -- [2]
				},
				[139949] = {
					"Чумная знахарка", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[130521] = {
					"Палубный матрос из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[122973] = {
					"Дазар'айский духовник", -- [1]
					"Атал'Дазар", -- [2]
				},
				[145067] = {
					"Тенеперый вороненок", -- [1]
					"", -- [2]
				},
				[147370] = {
					"Мастер клинка Каджа", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139438] = {
					"Вестник духов Тоган", -- [1]
					"SarasIsland", -- [2]
				},
				[139694] = {
					"Едкий Панцирь", -- [1]
					"SarasIsland", -- [2]
				},
				[129370] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146859] = {
					"Порабощенный элементаль камня", -- [1]
					"SarasIsland", -- [2]
				},
				[140991] = {
					"Мозгоплет", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132530] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
					"", -- [2]
				},
				[140974] = {
					"Старозоб", -- [1]
					"", -- [2]
				},
				[139439] = {
					"Закатный чародей Дзуун", -- [1]
					"", -- [2]
				},
				[139695] = {
					"Шустроклешень", -- [1]
					"SarasIsland", -- [2]
				},
				[134338] = {
					"Жрец моря - каратель", -- [1]
					"Святилище Штормов", -- [2]
				},
				[130522] = {
					"Морячка из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[61247] = {
					"Глинтрок-зеленорог", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[146860] = {
					"Мародер из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[140975] = {
					"Младозоб", -- [1]
					"", -- [2]
				},
				[122263] = {
					"Твердопанцирный хрустогрыз", -- [1]
					"", -- [2]
				},
				[143011] = {
					"Песочный окунь", -- [1]
					"", -- [2]
				},
				[135474] = {
					"Ведьма-послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140976] = {
					"Червь-бурильщик", -- [1]
					"", -- [2]
				},
				[139697] = {
					"Верховный шаман Клаксикар", -- [1]
					"SarasIsland", -- [2]
				},
				[132532] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[130011] = {
					"Буканьер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[132802] = {
					"Йети-крепкорог", -- [1]
					"", -- [2]
				},
				[133556] = {
					"Разак Сковородкер", -- [1]
					"", -- [2]
				},
				[142000] = {
					"Зловещее щупальце", -- [1]
					"", -- [2]
				},
				[126429] = {
					"Твердопанцирный коралловый краб", -- [1]
					"SarasIsland", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[146862] = {
					"Поработительница из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136883] = {
					"Заклинатель шипов из племени Острогривов", -- [1]
					"", -- [2]
				},
				[132481] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137395] = {
					"Опытный пехотинец", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133557] = {
					"Разак Сковородкер", -- [1]
					"", -- [2]
				},
				[129372] = {
					"Метатель черной смолы", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134069] = {
					"Вол'зит Шепчущая", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[56706] = {
					"Крик'тик-бомбардир", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[140978] = {
					"Страхотун", -- [1]
					"", -- [2]
				},
				[130012] = {
					"Опустошительница из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127048] = {
					"Землекоп из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[61056] = {
					"Изначальный элементаль земли", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139340] = {
					"Некромант из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[146118] = {
					"Агрессивный иглоспин", -- [1]
					"", -- [2]
				},
				[140979] = {
					"Длиннозуб", -- [1]
					"", -- [2]
				},
				[146864] = {
					"Заклинательница земли из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136885] = {
					"Шипомант из племени Острогривов", -- [1]
					"", -- [2]
				},
				[139188] = {
					"Стальной Мех", -- [1]
					"", -- [2]
				},
				[139444] = {
					"Некролорд Цзыань", -- [1]
					"", -- [2]
				},
				[139700] = {
					"Океанский шаман", -- [1]
					"SarasIsland", -- [2]
				},
				[129373] = {
					"Портовая заводчица", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[146874] = {
					"Призывательница ветров Марайя", -- [1]
					"", -- [2]
				},
				[136249] = {
					"Сторожевой элементаль", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140980] = {
					"Нефритовый червь", -- [1]
					"", -- [2]
				},
				[138432] = {
					"Повелительница приливов Несса", -- [1]
					"", -- [2]
				},
				[139445] = {
					"Тумат", -- [1]
					"", -- [2]
				},
				[139701] = {
					"Низший океанский оракул", -- [1]
					"SarasIsland", -- [2]
				},
				[136802] = {
					"Углекус", -- [1]
					"", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[130653] = {
					"Бесшабашная подрывница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146866] = {
					"Порабощенный элементаль льда", -- [1]
					"SarasIsland", -- [2]
				},
				[130909] = {
					"Смрадная личинка", -- [1]
					"Подгнилье", -- [2]
				},
				[139442] = {
					"Цзукан Спинолом", -- [1]
					"SarasIsland", -- [2]
				},
				[138819] = {
					"Мародер из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[136391] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138511] = {
					"Лазурокрыл", -- [1]
					"", -- [2]
				},
				[126919] = {
					"Призывательница шторма из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[146867] = {
					"Задира из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[129758] = {
					"Гренадер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140982] = {
					"Ледолом", -- [1]
					"SarasIsland", -- [2]
				},
				[11658] = {
					"Огненный великан", -- [1]
					"Огненные Недра", -- [2]
				},
				[60197] = {
					"Тренировочный манекен", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139400] = {
					"Речной заклинатель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[137405] = {
					"Цепкий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136839] = {
					"Мроган", -- [1]
					"", -- [2]
				},
				[136190] = {
					"Темный разлом", -- [1]
					"SarasIsland", -- [2]
				},
				[139460] = {
					"Каменный ткач земли", -- [1]
					"", -- [2]
				},
				[136889] = {
					"Шипастый колдун Так", -- [1]
					"", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[59458] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[59522] = {
					"Пенистый бражный хмелементаль", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[59778] = {
					"Крик'тик-боец", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[146104] = {
					"Живая бомба", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134331] = {
					"Король Рау'ай", -- [1]
					"Гробница королей", -- [2]
				},
				[146869] = {
					"Гюрум Жестокий", -- [1]
					"SarasIsland", -- [2]
				},
				[140984] = {
					"Червь-хладобур", -- [1]
					"SarasIsland", -- [2]
				},
				[138625] = {
					"Аматет-каратель", -- [1]
					"", -- [2]
				},
				[131261] = {
					"Даркис", -- [1]
					"", -- [2]
				},
				[136891] = {
					"Клыколом Бывалый", -- [1]
					"", -- [2]
				},
				[140985] = {
					"Кислотный червь", -- [1]
					"", -- [2]
				},
				[136892] = {
					"Брутарыл", -- [1]
					"", -- [2]
				},
				[130655] = {
					"Бобби Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[146870] = {
					"Чародейка Оназаи", -- [1]
					"SarasIsland", -- [2]
				},
				[132797] = {
					"Елененок", -- [1]
					"", -- [2]
				},
				[135050] = {
					"Жуткий капитан Вандегрим", -- [1]
					"Вольная Гавань", -- [2]
				},
				[128967] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133389] = {
					"Гальваззт", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[146103] = {
					"Живая бомба", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140294] = {
					"Волк-снегошкур", -- [1]
					"", -- [2]
				},
				[138427] = {
					"Гарпунщица из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[146871] = {
					"Матриарх Нас'найя", -- [1]
					"", -- [2]
				},
				[140986] = {
					"Кислотный бурильщик", -- [1]
					"", -- [2]
				},
				[135470] = {
					"Ака'али Завоевательница", -- [1]
					"Гробница королей", -- [2]
				},
				[140678] = {
					"Снегобородый ревун", -- [1]
					"", -- [2]
				},
				[136890] = {
					"Железный Оркас", -- [1]
					"", -- [2]
				},
				[130400] = {
					"Сокрушитель из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[63808] = {
					"Тусклый самоцвет", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[138428] = {
					"Мирмидон из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[136893] = {
					"Землетряс Агган", -- [1]
					"", -- [2]
				},
				[61442] = {
					"Куай Бесчеловечный", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[59459] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[136976] = {
					"Т'зала", -- [1]
					"Гробница королей", -- [2]
				},
				[136186] = {
					"Жрица моря - спиритуалистка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136888] = {
					"Заклинатель грязи Баррул", -- [1]
					"", -- [2]
				},
				[138429] = {
					"Заклинательница волн из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[146873] = {
					"Убийственная буря", -- [1]
					"SarasIsland", -- [2]
				},
				[140988] = {
					"Сталерез", -- [1]
					"", -- [2]
				},
				[122963] = {
					"Резан", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132864] = {
					"Молодой крепкорук", -- [1]
					"", -- [2]
				},
				[145850] = {
					"Гилнеасский сапер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136207] = {
					"Стромгардская защитница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[130318] = {
					"Пророк из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[148665] = {
					"Растарский почетный страж", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148921] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140989] = {
					"Костечешуйный червь", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[147376] = {
					"Барьер", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134157] = {
					"Тенеликий воин", -- [1]
					"Гробница королей", -- [2]
				},
				[145851] = {
					"Калдорай - наездник на гиппогрифе", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139015] = {
					"Дикий лунный совух", -- [1]
					"", -- [2]
				},
				[146863] = {
					"Опустошитель из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136881] = {
					"Землепроходец из племени Острогривов", -- [1]
					"", -- [2]
				},
				[146875] = {
					"Валимок Зловредный", -- [1]
					"", -- [2]
				},
				[140990] = {
					"Костечешуйный плеватель", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[128651] = {
					"Хадал Черная Бездна", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133944] = {
					"Аспидис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[122086] = {
					"Сталешкур из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[132868] = {
					"Сгусток азерита", -- [1]
					"", -- [2]
				},
				[148907] = {
					"Призматический образ", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148667] = {
					"Растарский каратель", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146876] = {
					"Мачиту Жестокий", -- [1]
					"", -- [2]
				},
				[132803] = {
					"Камнегривый вендиго", -- [1]
					"", -- [2]
				},
				[131402] = {
					"Клещ из Подгнилья", -- [1]
					"Подгнилье", -- [2]
				},
				[59460] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[140356] = {
					"Яркая Чешуйка", -- [1]
					"", -- [2]
				},
				[134686] = {
					"Взрослый кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[146365] = {
					"Пылающий огнестраж", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[137375] = {
					"Экзоскелет озаренных", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139337] = {
					"Кровопийца из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[139010] = {
					"Свирепый острокоготь", -- [1]
					"", -- [2]
				},
				[131383] = {
					"Заклинатель спор Занча", -- [1]
					"Подгнилье", -- [2]
				},
				[139457] = {
					"Каменный цийлинь", -- [1]
					"", -- [2]
				},
				[126181] = {
					"Рамут Черный", -- [1]
					"", -- [2]
				},
				[136990] = {
					"Анкали Проклятая", -- [1]
					"", -- [2]
				},
				[146366] = {
					"Раскаленная гончая", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[138434] = {
					"Ведьма бурь из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[136643] = {
					"Экстрактор азерита", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140993] = {
					"Темнополз-охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[126093] = {
					"Саурок из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[146854] = {
					"Чернолапая Стелла", -- [1]
					"", -- [2]
				},
				[146884] = {
					"Воевода Хьельскард", -- [1]
					"", -- [2]
				},
				[139433] = {
					"Сестра страдания", -- [1]
					"", -- [2]
				},
				[146367] = {
					"Уг'ольм", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[118175] = {
					"Элементаль бури", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140447] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131847] = {
					"Гуляка из дома Уэйкрестов", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138830] = {
					"Троваст Ведомый Звездами", -- [1]
					"", -- [2]
				},
				[135365] = {
					"Матрона Альма", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[122088] = {
					"Тихоступ из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[130404] = {
					"Крысолов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138641] = {
					"Квалдир-ужасень", -- [1]
					"SarasIsland", -- [2]
				},
				[138436] = {
					"Лорд Змееплав", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[146880] = {
					"Голвран Загадочный", -- [1]
					"", -- [2]
				},
				[132807] = {
					"Цийлинь клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[61444] = {
					"Мин Коварный", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[59461] = {
					"Прыгунок", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[133510] = {
					"Паладин Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[140441] = {
					"Молодой мускусный як", -- [1]
					"", -- [2]
				},
				[138437] = {
					"Сзерис Завоеватель", -- [1]
					"", -- [2]
				},
				[134599] = {
					"Усиленный призыватель шторма", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140427] = {
					"Скальный козел - вожак стада", -- [1]
					"", -- [2]
				},
				[144772] = {
					"Леди Тамакин", -- [1]
					"", -- [2]
				},
				[139461] = {
					"Каменный скалогрыз", -- [1]
					"", -- [2]
				},
				[122089] = {
					"Оракул из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[146370] = {
					"Боец авангарда из клана Черного Железа", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[148673] = {
					"Сосуд Бвонсамди", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146882] = {
					"Исполинская чумная гончая", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139339] = {
					"Защитник из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[130437] = {
					"Кобольд-рудокоп", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139462] = {
					"Каменный глиночет", -- [1]
					"", -- [2]
				},
				[134909] = {
					"Стрекочущий паук-прядильщик", -- [1]
					"SarasIsland", -- [2]
				},
				[138561] = {
					"Безликий бичеватель разума", -- [1]
					"", -- [2]
				},
				[146371] = {
					"Шаман стихий из клана Черного Железа", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146883] = {
					"Псарь Ангвольд", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[131492] = {
					"Преданная жрица крови", -- [1]
					"Подгнилье", -- [2]
				},
				[11659] = {
					"Разрушитель из недр", -- [1]
					"Огненные Недра", -- [2]
				},
				[139463] = {
					"Каменный уничтожитель", -- [1]
					"", -- [2]
				},
				[122090] = {
					"Сарашас Разоритель", -- [1]
					"", -- [2]
				},
				[146116] = {
					"Иглоспин-добытчик", -- [1]
					"", -- [2]
				},
				[139341] = {
					"Темный чародей из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[58812] = {
					"Злобная сущность", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[144837] = {
					"Олень c Темных берегов", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139422] = {
					"Бронированный укротитель кролусков", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[61445] = {
					"Хайан Неудержимый", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[139464] = {
					"Ревун клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[126291] = {
					"Пехотинец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133835] = {
					"Дикий кровавый роевик", -- [1]
					"Подгнилье", -- [2]
				},
				[61242] = {
					"Глинтрок-крепкошкур", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[138441] = {
					"Глубинная певунья", -- [1]
					"", -- [2]
				},
				[146885] = {
					"Гниловран", -- [1]
					"", -- [2]
				},
				[140442] = {
					"Мускусный як", -- [1]
					"", -- [2]
				},
				[135263] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139674] = {
					"Глубинный ходок", -- [1]
					"SarasIsland", -- [2]
				},
				[126185] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[133836] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137881] = {
					"Рыцарь из Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[144839] = {
					"Белохвостая олениха", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[126847] = {
					"Капитан Рауль", -- [1]
					"Вольная Гавань", -- [2]
				},
				[129000] = {
					"Задира из братства Южных Морей", -- [1]
					"", -- [2]
				},
				[139466] = {
					"Кобальтовый камнестраж", -- [1]
					"", -- [2]
				},
				[66413] = {
					"Пузыристый бражный хмелементаль", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[146119] = {
					"Огромный иглоспин", -- [1]
					"", -- [2]
				},
				[138187] = {
					"Искаженный ужас", -- [1]
					"Подгнилье", -- [2]
				},
				[138443] = {
					"Чешуестраж Булет", -- [1]
					"", -- [2]
				},
				[144840] = {
					"Пятнистый олененок", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140679] = {
					"Снегобородый вендиго", -- [1]
					"", -- [2]
				},
				[130024] = {
					"Мокрая корабельная крыса", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138493] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[140038] = {
					"Глубинный угорь", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138644] = {
					"Квалдир-проклинатель", -- [1]
					"SarasIsland", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138444] = {
					"Генерал Веспарак", -- [1]
					"", -- [2]
				},
				[138643] = {
					"Квалдир-берсерк", -- [1]
					"", -- [2]
				},
				[129830] = {
					"Чудовищный Клац-Клац", -- [1]
					"SarasIsland", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[139468] = {
					"Хребтодер Ку-Кон", -- [1]
					"", -- [2]
				},
				[145865] = {
					"Гилнеасский мушкетер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[148621] = {
					"Джек'ква", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[128649] = {
					"Сержант Бейнбридж", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140855] = {
					"Капель", -- [1]
					"", -- [2]
				},
				[146889] = {
					"Вестник смерти из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[138890] = {
					"Даргульф Искатель Духов", -- [1]
					"", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[139664] = {
					"Злобноплав из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[132713] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[61239] = {
					"Глинтрок-оракул", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[147965] = {
					"Нестабильный азерит", -- [1]
					"", -- [2]
				},
				[138446] = {
					"Призывательница пучин Зелисса", -- [1]
					"", -- [2]
				},
				[146890] = {
					"Руномант из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[140676] = {
					"Большой камнеспин", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[149356] = {
					"Разъяренный азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[139470] = {
					"Распорядитель змеев Сишо", -- [1]
					"", -- [2]
				},
				[133585] = {
					"Дина \"Диззи\" Головокружилка", -- [1]
					"", -- [2]
				},
				[140076] = {
					"Крепкорук-вожак", -- [1]
					"", -- [2]
				},
				[124582] = {
					"Ущельник", -- [1]
					"", -- [2]
				},
				[138447] = {
					"Воительница Салария", -- [1]
					"", -- [2]
				},
				[56713] = {
					"Мастер Снежный Вихрь", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[138469] = {
					"Обсидиановый чешуйчатый губитель", -- [1]
					"", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[136845] = {
					"Метательница топоров из племени Песчаного Черепа", -- [1]
					"", -- [2]
				},
				[134286] = {
					"Верховный маг Тамуура", -- [1]
					"", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[132051] = {
					"Кровавый клещ", -- [1]
					"Подгнилье", -- [2]
				},
				[129016] = {
					"Мушкетер из братства Южных Морей", -- [1]
					"", -- [2]
				},
				[146892] = {
					"Мародер из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[132819] = {
					"Волчонок-рыжешкур", -- [1]
					"", -- [2]
				},
				[132746] = {
					"Ледочешуйчатый матриарх", -- [1]
					"", -- [2]
				},
				[59464] = {
					"Прыгун", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[138887] = {
					"Мистик из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[140619] = {
					"Береговой ярдозуб", -- [1]
					"", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[61338] = {
					"Глинтрок-тихоступ", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[148940] = {
					"Калдорайская химера", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[132820] = {
					"Поросенок-грязнорыл", -- [1]
					"", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139473] = {
					"Каменный машинист Ну-Синь", -- [1]
					"", -- [2]
				},
				[133588] = {
					"Автоматический взрывчаткострел", -- [1]
					"", -- [2]
				},
				[144755] = {
					"Глашатай Заъксаш", -- [1]
					"Горнило Штормов", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[148483] = {
					"Древний мститель", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[134612] = {
					"Цепкие щупальца", -- [1]
					"Святилище Штормов", -- [2]
				},
				[148442] = {
					"Гномка-диверсантка", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[145371] = {
					"Уу'нат", -- [1]
					"Горнило Штормов", -- [2]
				},
				[139474] = {
					"Цор-Синь Оракул Земли", -- [1]
					"", -- [2]
				},
				[132740] = {
					"Ядовитая гидра", -- [1]
					"SarasIsland", -- [2]
				},
				[135892] = {
					"Высвобожденное пламя", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[24207] = {
					"Войско мертвых", -- [1]
					"Горнило Штормов", -- [2]
				},
				[146256] = {
					"Ламинария", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[146895] = {
					"Вандал из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[138994] = {
					"Древорук", -- [1]
					"", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[56906] = {
					"Диверсант Кип'тилак", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[126190] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[135893] = {
					"Пылающий страж", -- [1]
					"", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[65414] = {
					"Призрачный ша", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[5925] = {
					"Тотем заземления", -- [1]
					"Храм Котмогу", -- [2]
				},
				[148254] = {
					"Ледяной осколок", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[139476] = {
					"Каменное чудище", -- [1]
					"", -- [2]
				},
				[129601] = {
					"Гарпунщик из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135894] = {
					"Элементаль огня", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[132056] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140854] = {
					"Дух отлива", -- [1]
					"", -- [2]
				},
				[125828] = {
					"Зёбедам", -- [1]
					"Атал'Дазар", -- [2]
				},
				[134895] = {
					"Железнопут-прядильщик", -- [1]
					"", -- [2]
				},
				[56747] = {
					"Гу Небесный Удар", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[58198] = {
					"Послушник Шадо-Пан", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[131545] = {
					"Леди Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135895] = {
					"Ослепительная искра", -- [1]
					"SarasIsland", -- [2]
				},
				[139761] = {
					"Старший матрос О'Рурк", -- [1]
					"", -- [2]
				},
				[129552] = {
					"Монзуми", -- [1]
					"Атал'Дазар", -- [2]
				},
				[134616] = {
					"Подрастающий кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[135959] = {
					"Землетряс Рокочущий", -- [1]
					"", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[56395] = {
					"Новообращенный Шадо-Пан", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[133593] = {
					"Техник-эксперт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139000] = {
					"Старейшина Юр", -- [1]
					"", -- [2]
				},
				[138827] = {
					"Бодальф Сильный", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[61392] = {
					"Хартак Поджигатель", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[134617] = {
					"Детеныш кролуска", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129526] = {
					"Морячок из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140152] = {
					"Гнилокоготь-терзатель", -- [1]
					"", -- [2]
				},
				[56719] = {
					"Ша Жестокости", -- [1]
					"Монастырь Шадо-Пан", -- [2]
				},
				[138998] = {
					"Толстошкур", -- [1]
					"", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[136000] = {
					"Бериллус", -- [1]
					"", -- [2]
				},
				[61337] = {
					"Глинтрок-крепкошкур", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[126832] = {
					"Небесный капитан Крагг", -- [1]
					"Вольная Гавань", -- [2]
				},
				[143985] = {
					"Поглощатор", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139480] = {
					"Каменный защитник", -- [1]
					"", -- [2]
				},
				[61398] = {
					"Синь Мастер Боя", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[58319] = {
					"Малый ша", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[59873] = {
					"Оскверненная живая вода", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[56792] = {
					"Фрагмент сомнения", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[140760] = {
					"Земляной великан", -- [1]
					"", -- [2]
				},
				[138969] = {
					"Дух могу из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[59555] = {
					"Навязчивый ша", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[59546] = {
					"Говорящая рыба", -- [1]
					"Храм Нефритовой Змеи", -- [2]
				},
				[148194] = {
					"Ледяной барьер", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[133852] = {
					"Живая гниль", -- [1]
					"Подгнилье", -- [2]
				},
				[126449] = {
					"Илоплюй", -- [1]
					"SarasIsland", -- [2]
				},
				[134364] = {
					"Отступник - хранитель яиц", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[89] = {
					"Инфернал", -- [1]
					"Око Бури", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[56875] = {
					"Крик'тик-подрывник", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[61216] = {
					"Глинтрок-проклинатель", -- [1]
					"Дворец Могу'шан", -- [2]
				},
				[56589] = {
					"Боец Га'док", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[144637] = {
					"Гронг", -- [1]
					"Битва за Дазар'алор", -- [2]
				},
				[140250] = {
					"Елень", -- [1]
					"", -- [2]
				},
				[56930] = {
					"Крик'тик - вестник роя", -- [1]
					"Врата Заходящего Солнца", -- [2]
				},
				[144972] = {
					"Калдорай-охотница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138971] = {
					"Змей клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[141283] = {
					"Кул-тирасский стражник", -- [1]
					"Осада Боралуса", -- [2]
				},
				[56718] = {
					"Прыгун", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[135248] = {
					"Бриона Кровожадная", -- [1]
					"", -- [2]
				},
				[59551] = {
					"Попрыгун", -- [1]
					"Хмелеварня Буйных Портеров", -- [2]
				},
				[146910] = {
					"Чумной ворон клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["captured_spells"] = {
				[204598] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Гачистарший-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269301] = {
					["type"] = "DEBUFF",
					["source"] = "Освобожденное чудовище",
					["encounterID"] = 2123,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133007,
				},
				[262652] = {
					["source"] = "Акибаскай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэйню",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295134] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анэра",
					["npcID"] = 0,
				},
				[32752] = {
					["source"] = "Райзенвтащер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265468] = {
					["source"] = "Кровавый осквернитель",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133912,
				},
				[257413] = {
					["source"] = "Кельталаз-Гром",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215598] = {
					["source"] = "Шаулэн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278769] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2094] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5215] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269310] = {
					["encounterID"] = 2123,
					["source"] = "Хранитель титанов Хезрел",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134419,
				},
				[279029] = {
					["source"] = "Дунголор-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2118,
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Дубовик-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Олднигга",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259718] = {
					["encounterID"] = 2112,
					["source"] = "Заклинатель спор Занча",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131383,
				},
				[287471] = {
					["source"] = "Савант-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Дженке-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beldoran-Thrall",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Ганчибейло-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["source"] = "Нубокоровка-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Душманшурави-Галакронд",
					["npcID"] = 0,
				},
				[200389] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Горныйвилли-ВечнаяПесня",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кассиапейя",
					["npcID"] = 0,
				},
				[215607] = {
					["source"] = "Шаулэн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аринэко",
					["npcID"] = 0,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Гоблата-Борейскаятундра",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278789] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269838] = {
					["encounterID"] = 2123,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Фусака-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199753] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280583] = {
					["source"] = "Trollha-Azshara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207682] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269843] = {
					["encounterID"] = 2123,
					["source"] = "Освобожденное чудовище",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133007,
				},
				[194384] = {
					["source"] = "Ганчибейло-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Адъю-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266265] = {
					["source"] = "Падший вестник смерти",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134284,
				},
				[203720] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60233] = {
					["source"] = "Кельанор-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Тандиэль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[83958] = {
					["source"] = "Лёвар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291587] = {
					["source"] = "Спящая маска вуду",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150412,
				},
				[206151] = {
					["source"] = "Гиввара",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Дым-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204490] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Дэнилей-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292359] = {
					["source"] = "Реккардо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Поларо-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Ютуф",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203852] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Меджайхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274459] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272414] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137618,
				},
				[203981] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Сикнэйчур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Бубосвар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Невед-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Горныйвилли-ВечнаяПесня",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Дит",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265770] = {
					["source"] = "Свихнувшийся дух",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135054,
				},
				[212040] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[241835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Обертошенька-Дракономор",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аринэко",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Меджайхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["type"] = "BUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2123,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дланьгоспода-СвежевательДуш",
					["npcID"] = 0,
				},
				[274213] = {
					["encounterID"] = 2112,
					["source"] = "Заклинатель спор Занча",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131383,
				},
				[279584] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288024] = {
					["source"] = "Меджайхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Ирайлин-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Акибаскай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[240559] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57934] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Ганчибейло-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Святаякриш",
					["npcID"] = 0,
				},
				[8921] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265523] = {
					["source"] = "Кровавый осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133912,
				},
				[272940] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["source"] = "Аллоди-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264757] = {
					["encounterID"] = 2111,
					["source"] = "Старейшина Ликса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131318,
				},
				[290333] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Друшатулька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260894] = {
					["encounterID"] = 2111,
					["source"] = "Старейшина Ликса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131318,
				},
				[80576] = {
					["source"] = "Убийца из племени Песчаной Бури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129525,
				},
				[268852] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скеллор",
					["npcID"] = 0,
				},
				[265016] = {
					["source"] = "Избранная кровавая матрона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131436,
				},
				[290337] = {
					["source"] = "Арпеджиато-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199260] = {
					["source"] = "Ирроная-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265019] = {
					["source"] = "Избранная кровавая матрона",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131436,
				},
				[268856] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265533] = {
					["source"] = "Клещ из Подгнилья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131402,
				},
				[289318] = {
					["source"] = "Дубовик-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272183] = {
					["source"] = "Падший вестник смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134284,
				},
				[18562] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210643] = {
					["source"] = "Дым-ВечнаяПесня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114018] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268607] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Илийрэ-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Елект",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Нубокоровка-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265540] = {
					["source"] = "Смрадная личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130909,
				},
				[267331] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147732] = {
					["source"] = "Дунголор-Разувий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Берсеркэр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Малгон-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202719] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Очаковская",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Реккардо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Сентинелс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280635] = {
					["source"] = "Ждупеченьки-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13877] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204513] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анэра",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Йакриведко-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272457] = {
					["encounterID"] = 2112,
					["source"] = "Заклинатель спор Занча",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131383,
				},
				[292151] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273226] = {
					["encounterID"] = 2112,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[281413] = {
					["source"] = "Павел-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212061] = {
					["source"] = "Убийца из племени Песчаной Бури",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129525,
				},
				[293946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диаболик",
					["npcID"] = 0,
				},
				[170758] = {
					["source"] = "Столб вызова",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 85517,
				},
				[290366] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215387] = {
					["source"] = "Шаулэн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204262] = {
					["source"] = "Форэвэрэлоне-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188534] = {
					["source"] = "Пиффагор-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Музечу-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[268887] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ассаккурра",
					["npcID"] = 0,
				},
				[272469] = {
					["source"] = "Хватка Бездны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138538,
				},
				[202602] = {
					["source"] = "Ютуф",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[273238] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288839] = {
					["source"] = "Мэйвиз-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Тряся",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[712] = {
					["source"] = "Райзенвтащер",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271194] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265568] = {
					["source"] = "Оскверненный дух",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133685,
				},
				[268893] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["source"] = "Совестькотэ-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272986] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269406] = {
					["encounterID"] = 2123,
					["source"] = "Хранитель титанов Хезрел",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134419,
				},
				[272987] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288844] = {
					["source"] = "Восставшая душа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[286031] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джиэли",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Скизи-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287568] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Терончег-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7870] = {
					["source"] = "Келрау",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[1459] = {
					["source"] = "Пикулии-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["source"] = "Биовар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Ирроная-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260793] = {
					["encounterID"] = 2118,
					["source"] = "Кроглот Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131817,
				},
				[268905] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[740] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279648] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[161691] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скеллор",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2123,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197625] = {
					["source"] = "Дубовик-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Акибаскай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Похен-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дск-СвежевательДуш",
					["npcID"] = 0,
				},
				[265081] = {
					["source"] = "Избранная кровавая матрона",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131436,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гургенхмель-Голдринн",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274289] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278637] = {
					["source"] = "Клещ из Подгнилья",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131402,
				},
				[768] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Орков",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2123,
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2123,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Алкогонель-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[166302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "\"Блескотрон-6000\"",
					["npcID"] = 101527,
				},
				[222695] = {
					["source"] = "Адельфа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260291] = {
					["source"] = "Растарский ликтор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130958,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Коляйка",
					["npcID"] = 0,
				},
				[280433] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Бэста-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Нохтцерен-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Невед-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Аладиэль-ПиратскаяБухта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Малгон-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Полонит-Дракономор",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269185] = {
					["source"] = "Освобожденное чудовище",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133007,
				},
				[204157] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274814] = {
					["type"] = "BUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2123,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Адъю-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Друшатулька-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Кайзус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["source"] = "Акибаскай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Сиркай-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8676] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156079] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хуртелиця-ЧерныйШрам",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273285] = {
					["encounterID"] = 2112,
					["source"] = "Взрывчатый стручок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139127,
				},
				[273797] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257102] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Скеллор",
					["npcID"] = 0,
				},
				[278147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[268429] = {
					["source"] = "Акибаскай",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270987] = {
					["source"] = "Служитель Налоракка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120949,
				},
				[263060] = {
					["source"] = "Назватанский призрак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131169,
				},
				[278917] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Львица",
					["npcID"] = 0,
				},
				[207744] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["encounterID"] = 2118,
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[818] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пробиусс",
					["npcID"] = 0,
				},
				[260685] = {
					["type"] = "DEBUFF",
					["source"] = "Старейшина Ликса",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131318,
				},
				[263063] = {
					["source"] = "Назватанский призрак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131169,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Коляйка",
					["npcID"] = 0,
				},
				[216441] = {
					["source"] = "Кэддис",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264603] = {
					["encounterID"] = 2111,
					["source"] = "Старейшина Ликса",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131318,
				},
				[288388] = {
					["source"] = "Восставшая душа",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[272276] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["source"] = "Олесямур-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Пикулии-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["source"] = "Дзели",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Скеллор",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Эмирфондд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Магкарош",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265376] = {
					["source"] = "Фанатичный охотник за головами",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133663,
				},
				[202636] = {
					["source"] = "Негра-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275351] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265377] = {
					["source"] = "Фанатичный охотник за головами",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133663,
				},
				[279956] = {
					["source"] = "Гиввара",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2367] = {
					["source"] = "Тутынка-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["source"] = "Ганчибейло-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Зоргович-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289423] = {
					["source"] = "Купоннапиво-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Жаи-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Савант-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мишокз",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Дзели",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1725] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260057] = {
					["source"] = "Жрец Гонка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[225787] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Дюмаль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186403] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202004] = {
					["source"] = "Дунголор-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Дюмаль-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260188] = {
					["source"] = "Крушитель из культа Вол'джамбы",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134156,
				},
				[274346] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1776] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Ганчибейло-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Годсмэкер",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Химитсе-СвежевательДуш",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288931] = {
					["source"] = "Фрагмент оживленного хранителя",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147989,
				},
				[255078] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэйню",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Олайзонми-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33943] = {
					["source"] = "Принцшипов",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278961] = {
					["source"] = "Больной плеточник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133870,
				},
				[202140] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Дунголор-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Дэнилей-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Рхаст",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292263] = {
					["source"] = "Бронированный клешневик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 150644,
				},
				[178740] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["source"] = "Монтараз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["source"] = "Ромэк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260069] = {
					["source"] = "Жрица Гонка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[164547] = {
					["source"] = "Дэнилей-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265668] = {
					["source"] = "Живая гниль",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133852,
				},
				[242551] = {
					["source"] = "Кгбжив-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Жрица Па'ку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[1833] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277179] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260455] = {
					["encounterID"] = 2118,
					["source"] = "Кровавый клещ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132051,
				},
				[102351] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260072] = {
					["source"] = "Жрец Па'ку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[48778] = {
					["source"] = "Шахтенный-Азурегос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[288693] = {
					["source"] = "Замученная душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148893,
				},
				[102352] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271559] = {
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288333] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203554] = {
					["source"] = "Ромэк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Наййтт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29166] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256111] = {
					["source"] = "Защитник храма",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152093,
				},
				[265679] = {
					["source"] = "Убийца из племени Песчаной Бури",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129525,
				},
				[227723] = {
					["source"] = "Пуня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252215] = {
					["source"] = "Кровавая сектантка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138274,
				},
				[273836] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290367] = {
					["encounterID"] = 2123,
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295809] = {
					["type"] = "BUFF",
					["source"] = "Гиввара",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Бэста-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2118,
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Акибаскай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260333] = {
					["encounterID"] = 2118,
					["source"] = "Кроглот Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131817,
				},
				[258883] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Пикулии-Галакронд",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Халупец",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Шахтенный-Азурегос",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196834] = {
					["source"] = "Дунголор-Разувий",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207685] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Бестья",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аринэко",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Арпельс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Trollha-Azshara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Кельанор-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272592] = {
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138281,
				},
				[268756] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255909] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Нубокоровка-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259358] = {
					["source"] = "Инвок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265433] = {
					["source"] = "Кровавый осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133912,
				},
				[292287] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хуртелиця-ЧерныйШрам",
					["npcID"] = 0,
				},
				[266201] = {
					["source"] = "Оживленный страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133836,
				},
				[120] = {
					["source"] = "Лилдэл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Аллоди-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Орков",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Меджайхд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266107] = {
					["source"] = "Дикий кровавый роевик",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133835,
				},
				[261498] = {
					["encounterID"] = 2111,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Терончег-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Вазар-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Птючка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["source"] = "Нубокоровка-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["source"] = "Trollha-Azshara",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Гиввара",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Акибаскай",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209859] = {
					["source"] = "Клещ из Подгнилья",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131402,
				},
				[263648] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Чпонькчвоньк-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Зёбедам",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Чпонькчвоньк-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145205] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50051,
				},
				[206662] = {
					["source"] = "Адельфа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185245] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281298] = {
					["source"] = "Чернигивське-Дракономор",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266209] = {
					["source"] = "Падший вестник смерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134284,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Чпонькчвоньк-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Ирайлин-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Trollha-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Арпеджиато-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25046] = {
					["encounterID"] = 2111,
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259732] = {
					["encounterID"] = 2112,
					["source"] = "Заклинатель спор Занча",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131383,
				},
				[197937] = {
					["source"] = "Арпеджиато-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Мисстрис",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272381] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137618,
				},
				[162264] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279152] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Лизабет-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Зоргович-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Хардонка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260879] = {
					["encounterID"] = 2111,
					["source"] = "Кровавый образ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134701,
				},
				[272609] = {
					["source"] = "Безликий осквернитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138281,
				},
				[247454] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Савант-Седогрив",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2111,
					["source"] = "Гиввара",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Дунголор-Разувий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277724] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Дженке-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Акибаскай",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Ирроная-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["source"] = "Соратник-кузнец - Орда",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88402,
				},
				[85288] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259830] = {
					["type"] = "BUFF",
					["source"] = "Заклинатель спор Занча",
					["encounterID"] = 2112,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131383,
				},
				[255741] = {
					["source"] = "Отступник-агрессор",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134321,
				},
				[162243] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Наййтт",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198837] = {
					["source"] = "Восставший тихоступ",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[268776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аманийский боевой медведь",
					["npcID"] = 130257,
				},
				[193358] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288330] = {
					["source"] = "Гиввара",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296142] = {
					["source"] = "Заблудшая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148894,
				},
				[203277] = {
					["source"] = "Хвоаранг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248289] = {
					["source"] = "Деньщик",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Карайна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260292] = {
					["encounterID"] = 2118,
					["source"] = "Кроглот Зараженный",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131817,
				},
				[256459] = {
					["source"] = "Максонхимера",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мэйню",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Ainusz-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Хардонка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аринэко",
					["npcID"] = 0,
				},
				[59628] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Олднигга",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Дым-ВечнаяПесня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290264] = {
					["source"] = "Невед-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210660] = {
					["source"] = "Дым-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Купоннапиво-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Сентинелс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Дит",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195457] = {
					["encounterID"] = 2118,
					["source"] = "Pinkrouge-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81262] = {
					["source"] = "Период цветения",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[138927] = {
					["source"] = "Дэлалуна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290372] = {
					["source"] = "Хайлиг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["type"] = "BUFF",
					["source"] = "Trollha-Azshara",
					["encounterID"] = 2111,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162908] = {
					["source"] = "Газ'ралка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129954,
				},
				[288988] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288989] = {
					["type"] = "DEBUFF",
					["source"] = "Pinkrouge-Kazzak",
					["encounterID"] = 2118,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ассаккурра",
					["npcID"] = 0,
				},
				[20473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаландис-Галакронд",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Дым-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Хирохо",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113860] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Елект",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Йакриведко-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265084] = {
					["source"] = "Преданная жрица крови",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131492,
				},
				[115834] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["source"] = "Trollha-Azshara",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85739] = {
					["source"] = "Ёмо-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279160] = {
					["source"] = "Ainusz-Azshara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Pinkrouge-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290471] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Пробиусс",
					["npcID"] = 0,
				},
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
			["health_statusbar_texture"] = "PlaterTexture",
			["dps"] = {
				["colors"] = {
					["noaggro"] = {
						0.113725490196078, -- [1]
						0.117647058823529, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateGlobalScale"] = "1.0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "1",
			},
			["minor_width_scale"] = 0.490000009536743,
			["number_region_first_run"] = true,
			["patch_version"] = 6,
			["aura_alpha"] = 0.799999952316284,
			["aura_height"] = 18,
			["aura_timer"] = false,
			["plate_config"] = {
				["enemynpc"] = {
					["power_percent_text_anchor"] = {
						["y"] = 0,
						["x"] = 0,
						["side"] = 9,
					},
					["power_percent_text_color"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["power_percent_text_font"] = "Arial Narrow",
					["cast"] = {
						nil, -- [1]
						14, -- [2]
					},
					["power_enabled"] = true,
					["mana_incombat"] = {
						150, -- [1]
						10, -- [2]
					},
					["pvp_always_incombat"] = true,
					["castbar_enabled"] = true,
					["power_percent_text_enabled"] = true,
					["healthbar_enabled"] = true,
					["power_percent_text_outline"] = "OUTLINE",
					["y_position_offset"] = -50,
					["power_percent_text_alpha"] = 1,
					["power_percent_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
					["healthbar_color_by_hp"] = false,
					["mana"] = {
						150, -- [1]
						10, -- [2]
					},
					["healthbar_color"] = {
						0.564706, -- [1]
						0.933333, -- [2]
						0.564706, -- [3]
						1, -- [4]
					},
					["click_through"] = false,
					["power_percent_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["power_percent_text_size"] = 9,
				},
				["enemyplayer"] = {
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
				["friendlyplayer"] = {
					["percent_text_ooc"] = true,
					["only_damaged"] = false,
					["health"] = {
						nil, -- [1]
						1, -- [2]
					},
					["health_incombat"] = {
						nil, -- [1]
						1, -- [2]
					},
					["actorname_text_size"] = 15,
					["only_thename"] = true,
					["actorname_text_spacing"] = 14,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 13,
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["all_names"] = true,
					["quest_enabled"] = false,
					["big_actortitle_text_size"] = 13,
					["health_incombat"] = {
						100, -- [1]
					},
					["percent_show_percent"] = false,
					["only_names"] = false,
					["relevance_state"] = 4,
				},
			},
			["indicator_enemyclass"] = true,
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
			},
		},
		["Default"] = {
			["tank"] = {
				["colors"] = {
					["aggro"] = {
						0, -- [1]
						0.686274509803922, -- [2]
						0.0196078431372549, -- [3]
						1, -- [4]
					},
					["nocombat"] = {
						0.301960784313726, -- [1]
						0.00392156862745098, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["anothertank"] = {
						1, -- [1]
						0, -- [2]
						0.905882352941177, -- [3]
						1, -- [4]
					},
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Color Change"] = 1,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Aura Border Color"] = 1,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit - Important"] = 5,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Small Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535473591,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1528748982,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Name"] = "Fixate [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["PlaterCore"] = 1,
					["Time"] = 1537397927,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1533663248,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535417117,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Time"] = 1534625053,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1540663131,
					["PlaterCore"] = 1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["ScriptType"] = 2,
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Time"] = 1534625053,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535048199,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["Time"] = 1535048441,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1535815768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Time"] = 1543250950,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = 2000853,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1542816185,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543253273,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1547991413,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [16]
			},
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["first_run2"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 627607,
					["Name"] = "Attacking Monk Statue [Plater]",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 574574,
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 135358,
					["LastHookEdited"] = "",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [16]
			},
			["last_news_time"] = 1543749097,
			["first_run3"] = true,
			["aura_cache_by_name"] = {
				["знамя орды"] = {
					61574, -- [1]
					70535, -- [2]
					77951, -- [3]
					79064, -- [4]
					81679, -- [5]
					82259, -- [6]
					86591, -- [7]
					87093, -- [8]
					133801, -- [9]
					134106, -- [10]
					135871, -- [11]
					178685, -- [12]
					178687, -- [13]
					178688, -- [14]
					178689, -- [15]
					193926, -- [16]
					270445, -- [17]
					61574, -- [18]
					70535, -- [19]
					77951, -- [20]
					79064, -- [21]
					81679, -- [22]
					82259, -- [23]
					86591, -- [24]
					87093, -- [25]
					133801, -- [26]
					134106, -- [27]
					135871, -- [28]
					178685, -- [29]
					178687, -- [30]
					178688, -- [31]
					178689, -- [32]
					193926, -- [33]
					270445, -- [34]
				},
				["знамя альянса"] = {
					61573, -- [1]
					87214, -- [2]
					133808, -- [3]
					134107, -- [4]
					178686, -- [5]
					178691, -- [6]
					178692, -- [7]
					178693, -- [8]
					61573, -- [9]
					87214, -- [10]
					133808, -- [11]
					134107, -- [12]
					178686, -- [13]
					178691, -- [14]
					178692, -- [15]
					178693, -- [16]
				},
				["мощь претендента"] = {
					206150, -- [1]
					206150, -- [2]
				},
				["симбиот г'ууна"] = {
					277242, -- [1]
					277261, -- [2]
					277264, -- [3]
					277566, -- [4]
				},
			},
			["hook_auto_imported"] = {
				["Jaina Encounter"] = 6,
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Execute Range"] = 1,
				["Blockade Encounter"] = 1,
				["Targetting Alpha"] = 3,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Players Targetting Amount"] = 4,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Aura Reorder"] = 1,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["npc_cache"] = {
				[141283] = {
					"Кул-тирасский стражник", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130333] = {
					"Пластинчатый василиск", -- [1]
					"SarasIsland", -- [2]
				},
				[129471] = {
					"Глубоководный пескорыск", -- [1]
					"", -- [2]
				},
				[144286] = {
					"Управляющая активами", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[145372] = {
					"Дикая призывательница луны", -- [1]
					"", -- [2]
				},
				[130621] = {
					"Заклинатель штормов Брайсон", -- [1]
					"", -- [2]
				},
				[130653] = {
					"Бесшабашная подрывница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137516] = {
					"Захватчица дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[141285] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130334] = {
					"Пластинчатый взорень", -- [1]
					"SarasIsland", -- [2]
				},
				[144160] = {
					"Головорез Краснокрюк", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146843] = {
					"Шипастый вурдалак", -- [1]
					"", -- [2]
				},
				[140839] = {
					"Дух воды", -- [1]
					"", -- [2]
				},
				[130622] = {
					"Заклинатель штормов Оран", -- [1]
					"", -- [2]
				},
				[133430] = {
					"Гений Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134005] = {
					"Сланцеед", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139690] = {
					"Океанский призыватель волн", -- [1]
					"SarasIsland", -- [2]
				},
				[130335] = {
					"Пластинчатый кристалиск", -- [1]
					"SarasIsland", -- [2]
				},
				[140968] = {
					"Гранатовый кусатель", -- [1]
					"SarasIsland", -- [2]
				},
				[139691] = {
					"Океанский заклинатель штормов", -- [1]
					"SarasIsland", -- [2]
				},
				[136881] = {
					"Землепроходец из племени Острогривов", -- [1]
					"", -- [2]
				},
				[133432] = {
					"Алхимик Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139692] = {
					"Океанский старейшина", -- [1]
					"SarasIsland", -- [2]
				},
				[147932] = {
					"Потревоженный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[140970] = {
					"Скальный разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[137521] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137585] = {
					"Тотем хватки земли", -- [1]
					"", -- [2]
				},
				[147933] = {
					"Геоактивный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[139438] = {
					"Вестник духов Тоган", -- [1]
					"SarasIsland", -- [2]
				},
				[139694] = {
					"Едкий Панцирь", -- [1]
					"SarasIsland", -- [2]
				},
				[129826] = {
					"Океанский клешнехват", -- [1]
					"SarasIsland", -- [2]
				},
				[145060] = {
					"Чудовищный тенеперый ворон", -- [1]
					"", -- [2]
				},
				[138481] = {
					"Хромит", -- [1]
					"SarasIsland", -- [2]
				},
				[139695] = {
					"Шустроклешень", -- [1]
					"SarasIsland", -- [2]
				},
				[147935] = {
					"Азерцветовый ползун", -- [1]
					"", -- [2]
				},
				[140334] = {
					"Темночешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[136885] = {
					"Шипомант из племени Острогривов", -- [1]
					"", -- [2]
				},
				[133436] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[144231] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[148894] = {
					"Заблудшая душа", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147936] = {
					"Азерцветовый камнеспин", -- [1]
					"SarasIsland", -- [2]
				},
				[140335] = {
					"Темночешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[140974] = {
					"Старозоб", -- [1]
					"", -- [2]
				},
				[144232] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139697] = {
					"Верховный шаман Клаксикар", -- [1]
					"SarasIsland", -- [2]
				},
				[147938] = {
					"Азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[140337] = {
					"Детеныш темночешуйчатого крылатого змея", -- [1]
					"", -- [2]
				},
				[140976] = {
					"Червь-бурильщик", -- [1]
					"", -- [2]
				},
				[130435] = {
					"Одурманенный вышибала", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132481] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136889] = {
					"Шипастый колдун Так", -- [1]
					"", -- [2]
				},
				[139700] = {
					"Океанский шаман", -- [1]
					"SarasIsland", -- [2]
				},
				[136890] = {
					"Железный Оркас", -- [1]
					"", -- [2]
				},
				[130436] = {
					"Отдыхающий работник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[128967] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146855] = {
					"Акина", -- [1]
					"", -- [2]
				},
				[136891] = {
					"Клыколом Бывалый", -- [1]
					"", -- [2]
				},
				[129830] = {
					"Чудовищный Клац-Клац", -- [1]
					"SarasIsland", -- [2]
				},
				[132740] = {
					"Ядовитая гидра", -- [1]
					"SarasIsland", -- [2]
				},
				[140980] = {
					"Нефритовый червь", -- [1]
					"", -- [2]
				},
				[132868] = {
					"Сгусток азерита", -- [1]
					"", -- [2]
				},
				[136190] = {
					"Темный разлом", -- [1]
					"SarasIsland", -- [2]
				},
				[136829] = {
					"Метательница топоров из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[130661] = {
					"Геомант Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[128649] = {
					"Сержант Бейнбридж", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134786] = {
					"Песчаный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[137405] = {
					"Цепкий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[128969] = {
					"Командир из корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146859] = {
					"Порабощенный элементаль камня", -- [1]
					"SarasIsland", -- [2]
				},
				[142324] = {
					"Дельфин-синеспин", -- [1]
					"", -- [2]
				},
				[136831] = {
					"Знахарь из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[129640] = {
					"Злобный портовый пес", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140792] = {
					"Стервятник-ломоклюв", -- [1]
					"", -- [2]
				},
				[129832] = {
					"Хрустяк", -- [1]
					"", -- [2]
				},
				[134788] = {
					"Иглохват-твердопанцирник", -- [1]
					"SarasIsland", -- [2]
				},
				[140984] = {
					"Червь-хладобур", -- [1]
					"SarasIsland", -- [2]
				},
				[122263] = {
					"Твердопанцирный хрустогрыз", -- [1]
					"", -- [2]
				},
				[149352] = {
					"Яркий азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[134214] = {
					"Клинок Бездны Келейн", -- [1]
					"", -- [2]
				},
				[134789] = {
					"Огромный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[128651] = {
					"Хадал Черная Бездна", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147948] = {
					"Сгустившийся азерит", -- [1]
					"", -- [2]
				},
				[134215] = {
					"Лоринас, Бегущий в сумраке", -- [1]
					"", -- [2]
				},
				[122264] = {
					"Старая твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[138623] = {
					"Аматет-лучник", -- [1]
					"", -- [2]
				},
				[146863] = {
					"Опустошитель из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[134216] = {
					"Темная заклинательница Зарра", -- [1]
					"", -- [2]
				},
				[148716] = {
					"Восставшая душа", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136005] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[149355] = {
					"Искаженный азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[146864] = {
					"Заклинательница земли из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[129802] = {
					"Земляной яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[119103] = {
					"Черный головорез", -- [1]
					"", -- [2]
				},
				[131726] = {
					"Гуннольф Яростный", -- [1]
					"SarasIsland", -- [2]
				},
				[136006] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[126449] = {
					"Илоплюй", -- [1]
					"SarasIsland", -- [2]
				},
				[144949] = {
					"Тенелюбивый хищник", -- [1]
					"", -- [2]
				},
				[131727] = {
					"Фенра Коварная", -- [1]
					"SarasIsland", -- [2]
				},
				[133963] = {
					"Подопытная крыса", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146866] = {
					"Порабощенный элементаль льда", -- [1]
					"SarasIsland", -- [2]
				},
				[135241] = {
					"Разоритель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131728] = {
					"Рауль Стойкий", -- [1]
					"SarasIsland", -- [2]
				},
				[122266] = {
					"Твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[146867] = {
					"Задира из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[131729] = {
					"Лико", -- [1]
					"SarasIsland", -- [2]
				},
				[132879] = {
					"Кристальный великан", -- [1]
					"SarasIsland", -- [2]
				},
				[149359] = {
					"Азеритовое чудище", -- [1]
					"", -- [2]
				},
				[145399] = {
					"Дикая призывательница звезд", -- [1]
					"", -- [2]
				},
				[140353] = {
					"Яркочешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[134796] = {
					"Гигантский иглохват", -- [1]
					"", -- [2]
				},
				[123289] = {
					"Блестопанцирный смертохват", -- [1]
					"SarasIsland", -- [2]
				},
				[131411] = {
					"Ядовитый змей", -- [1]
					"SarasIsland", -- [2]
				},
				[145975] = {
					"Молодой твердошкурый лось", -- [1]
					"", -- [2]
				},
				[130635] = {
					"Каменный яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146870] = {
					"Чародейка Оназаи", -- [1]
					"SarasIsland", -- [2]
				},
				[138247] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145976] = {
					"Твердошкурый лось", -- [1]
					"", -- [2]
				},
				[123290] = {
					"Блестопанцирный трещот", -- [1]
					"SarasIsland", -- [2]
				},
				[136012] = {
					"Горус Несдвигаемый", -- [1]
					"SarasIsland", -- [2]
				},
				[147957] = {
					"Азеризалида", -- [1]
					"", -- [2]
				},
				[145977] = {
					"Исполинский твердошкурый лось", -- [1]
					"", -- [2]
				},
				[132755] = {
					"Падальщик-ломоклюв", -- [1]
					"", -- [2]
				},
				[134991] = {
					"Крушитель из племени Песчаной Бури", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129231] = {
					"Рикса Огневерт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[123291] = {
					"Блестопанцирный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[129232] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139337] = {
					"Кровопийца из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[123292] = {
					"Блестопанцирный хвататель", -- [1]
					"SarasIsland", -- [2]
				},
				[138635] = {
					"Командир Хусан", -- [1]
					"", -- [2]
				},
				[132056] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130638] = {
					"Кроколиск-злобнокус", -- [1]
					"", -- [2]
				},
				[138061] = {
					"Докер Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137614] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133463] = {
					"Боевая машина Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138254] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139340] = {
					"Некромант из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[130639] = {
					"Злобнокус-пожиратель", -- [1]
					"", -- [2]
				},
				[138063] = {
					"Пафосный курортник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138255] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139341] = {
					"Темный чародей из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[146112] = {
					"Чернильная Шкура", -- [1]
					"", -- [2]
				},
				[140619] = {
					"Береговой ярдозуб", -- [1]
					"", -- [2]
				},
				[126424] = {
					"Коралловый приливный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[133593] = {
					"Техник-эксперт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[147965] = {
					"Нестабильный азерит", -- [1]
					"", -- [2]
				},
				[139342] = {
					"Воин из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[134807] = {
					"Древняя твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[134616] = {
					"Подрастающий кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139343] = {
					"Рабочий из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[134617] = {
					"Детеныш кролуска", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[144071] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139536] = {
					"Зара'тик - трутень", -- [1]
					"SarasIsland", -- [2]
				},
				[147968] = {
					"Активный азерит", -- [1]
					"", -- [2]
				},
				[139345] = {
					"Кулу Шепот Смерти", -- [1]
					"", -- [2]
				},
				[137940] = {
					"Сторожевая акула", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[147202] = {
					"Оживший азеритовый осколыш", -- [1]
					"SarasIsland", -- [2]
				},
				[135258] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135961] = {
					"Глубинный крушитель", -- [1]
					"SarasIsland", -- [2]
				},
				[135962] = {
					"Скальный яростень", -- [1]
					"SarasIsland", -- [2]
				},
				[139348] = {
					"Бага Ледяной Щит", -- [1]
					"SarasIsland", -- [2]
				},
				[134941] = {
					"Щетинистый паук", -- [1]
					"SarasIsland", -- [2]
				},
				[138838] = {
					"Зара'тик-богомол", -- [1]
					"SarasIsland", -- [2]
				},
				[129366] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133345] = {
					"Ленивый лаборант", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137625] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137626] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[126205] = {
					"Нажив-о-матик", -- [1]
					"", -- [2]
				},
				[130325] = {
					"Глубоководный шустрый краб", -- [1]
					"", -- [2]
				},
				[135263] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129367] = {
					"Воин бури из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131431] = {
					"Автоматический инспектор по безопасности", -- [1]
					"", -- [2]
				},
				[126429] = {
					"Твердопанцирный коралловый краб", -- [1]
					"SarasIsland", -- [2]
				},
				[138841] = {
					"Зара'тик - певец войны", -- [1]
					"SarasIsland", -- [2]
				},
				[134990] = {
					"Заряженная песчаная дьяволица", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129208] = {
					"Жуткий капитан Локвуд", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132532] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138369] = {
					"Футбомбная хулиганка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129227] = {
					"Азерокк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139353] = {
					"Неживой герой", -- [1]
					"SarasIsland", -- [2]
				},
				[134012] = {
					"Надсмотрщик Аскари", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[136643] = {
					"Экстрактор азерита", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140631] = {
					"Скат Южных морей", -- [1]
					"SarasIsland", -- [2]
				},
				[146827] = {
					"Дикая собака", -- [1]
					"", -- [2]
				},
				[130437] = {
					"Кобольд-рудокоп", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140609] = {
					"Жестокий мако", -- [1]
					"SarasIsland", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130485] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[147225] = {
					"Экстрактор азерита", -- [1]
					"SarasIsland", -- [2]
				},
				[140632] = {
					"Чешуйчатая черепаха", -- [1]
					"SarasIsland", -- [2]
				},
				[146828] = {
					"Дикий щенок", -- [1]
					"", -- [2]
				},
				[140760] = {
					"Земляной великан", -- [1]
					"", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137029] = {
					"Артиллерист", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129369] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140979] = {
					"Длиннозуб", -- [1]
					"", -- [2]
				},
				[137716] = {
					"Донный краб", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140982] = {
					"Ледолом", -- [1]
					"SarasIsland", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[146845] = {
					"Рваный Джаред", -- [1]
					"", -- [2]
				},
				[124583] = {
					"Гранатовый червь", -- [1]
					"SarasIsland", -- [2]
				},
				[132713] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136470] = {
					"Продавщица закусок", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[133379] = {
					"Гюрзис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139097] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[149344] = {
					"Одержимый яростью азерит", -- [1]
					"", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[130640] = {
					"Злобнокус-хвататель", -- [1]
					"", -- [2]
				},
				[139357] = {
					"Шаркун из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[129370] = {
					"Заклинатель моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137058] = {
					"Проклинательница Магода", -- [1]
					"", -- [2]
				},
				[136483] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130488] = {
					"Механожокей", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[145298] = {
					"Дикий пожиратель", -- [1]
					"", -- [2]
				},
				[133944] = {
					"Аспидис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140827] = {
					"Хихикающий чертополошник", -- [1]
					"", -- [2]
				},
				[148893] = {
					"Замученная душа", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140444] = {
					"Матерый мускусный як", -- [1]
					"", -- [2]
				},
				[138464] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[141938] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133482] = {
					"Ползучая мина", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146832] = {
					"Некромант-послушник", -- [1]
					"", -- [2]
				},
				[129786] = {
					"Океанская макрура", -- [1]
					"SarasIsland", -- [2]
				},
				[135763] = {
					"Порождение Бездны", -- [1]
					"", -- [2]
				},
				[138848] = {
					"Танцующий с клинками Зорлак", -- [1]
					"SarasIsland", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131311] = {
					"Бушующий азерит", -- [1]
					"SarasIsland", -- [2]
				},
				[145058] = {
					"Тенеперый ворон", -- [1]
					"", -- [2]
				},
				[136549] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146833] = {
					"Некромантка-заклинательница", -- [1]
					"", -- [2]
				},
				[141939] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139807] = {
					"Геодезист Торговой компании", -- [1]
					"", -- [2]
				},
				[139360] = {
					"Оживленный громила из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138466] = {
					"Обсидиановый дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140441] = {
					"Молодой мускусный як", -- [1]
					"", -- [2]
				},
				[139701] = {
					"Низший океанский оракул", -- [1]
					"SarasIsland", -- [2]
				},
				[129828] = {
					"Океанский щелкун", -- [1]
					"SarasIsland", -- [2]
				},
				[146849] = {
					"Владычица духов Ровена", -- [1]
					"", -- [2]
				},
				[136934] = {
					"Испытатель экспериментального оружия", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129372] = {
					"Метатель черной смолы", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138467] = {
					"Обсидиановый драконор", -- [1]
					"SarasIsland", -- [2]
				},
				[137517] = {
					"Разрушитель из дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140443] = {
					"Агрессивный мускусный як", -- [1]
					"", -- [2]
				},
				[146835] = {
					"Вурдалак", -- [1]
					"", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140447] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
					"", -- [2]
				},
				[145067] = {
					"Тенеперый вороненок", -- [1]
					"", -- [2]
				},
				[138468] = {
					"Обсидиановый заклинатель пламени", -- [1]
					"SarasIsland", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140768] = {
					"Гууру Разбиватель Гор", -- [1]
					"", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135245] = {
					"Крушитель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129373] = {
					"Портовый заводчик", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138469] = {
					"Обсидиановый чешуйчатый губитель", -- [1]
					"", -- [2]
				},
				[137511] = {
					"Головорез из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129827] = {
					"Океанский крошитель", -- [1]
					"SarasIsland", -- [2]
				},
				[145304] = {
					"Дикий душитель", -- [1]
					"", -- [2]
				},
				[134232] = {
					"Наемный убийца", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[128652] = {
					"Вик'Гот", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145305] = {
					"Дикий громила", -- [1]
					"", -- [2]
				},
				[141565] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138470] = {
					"Обсидиановый дракон", -- [1]
					"", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132530] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[123146] = {
					"Истерзанный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[141566] = {
					"Кишкодерка из банды Резчиков", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140355] = {
					"Яркочешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[134940] = {
					"Щетинистый пронзатель", -- [1]
					"SarasIsland", -- [2]
				},
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[142336] = {
					"Осьминожек", -- [1]
					"SarasIsland", -- [2]
				},
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[136883] = {
					"Заклинатель шипов из племени Острогривов", -- [1]
					"", -- [2]
				},
				[141282] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[130620] = {
					"Ледобоец Сераф", -- [1]
					"", -- [2]
				},
				[134939] = {
					"Щетинистый людоед", -- [1]
					"SarasIsland", -- [2]
				},
				[141284] = {
					"Кул-тирасская смотрительница приливов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[149331] = {
					"Сияющий азерит", -- [1]
					"", -- [2]
				},
				[146840] = {
					"Скелет-страж", -- [1]
					"", -- [2]
				},
				[145402] = {
					"Одичавшая безумица", -- [1]
					"", -- [2]
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["captured_spells"] = {
				[269279] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263275] = {
					["type"] = "BUFF",
					["source"] = "Надсмотрщик Аскари",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[271579] = {
					["encounterID"] = 2105,
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[268130] = {
					["source"] = "Продавщица закусок",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136470,
				},
				[263276] = {
					["type"] = "DEBUFF",
					["source"] = "Надсмотрщик Аскари",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[139176] = {
					["source"] = "Вазгард",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79968] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61839,
				},
				[155145] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262383] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[115834] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289467] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267367] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[257410] = {
					["source"] = "Вазгард",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255941] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262515] = {
					["source"] = "Огнелетчица Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[260669] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[124682] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57934] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258627] = {
					["type"] = "BUFF",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[79140] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Смлкс-ЧерныйШрам",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Аспиринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Анджелинушка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289349] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60234] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288839] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259140] = {
					["source"] = "Аадмирал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Кикмэн",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288841] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257544] = {
					["type"] = "DEBUFF",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[262270] = {
					["source"] = "Алхимик Торговой компании",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133432,
				},
				[290121] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269298] = {
					["source"] = "Наемный убийца",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[288844] = {
					["source"] = "Восставшая душа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[270576] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280413] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257418] = {
					["source"] = "Тэдэум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Буенес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Файэрола",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Тотем конденсации",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[269302] = {
					["source"] = "Наемный убийца",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[781] = {
					["source"] = "Крейро",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Мистэйрия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Хелнуракс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Атыничотак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260103] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Буенес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Фаствульв",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36554] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268797] = {
					["source"] = "Алхимик Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[55078] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262794] = {
					["source"] = "Гений Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[262412] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[262540] = {
					["source"] = "Техник-эксперт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[1833] = {
					["encounterID"] = 2105,
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Белтан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271867] = {
					["type"] = "DEBUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[126892] = {
					["source"] = "Мохнатыелапы-Голдринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290264] = {
					["source"] = "Курв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276212] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[259533] = {
					["encounterID"] = 2107,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[119611] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288989] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279153] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79977] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61840,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260813] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[279028] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262804] = {
					["source"] = "Гений Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133430,
				},
				[188443] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279924] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268810] = {
					["source"] = "Подопытная крыса",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[262092] = {
					["source"] = "Одурманенный вышибала",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130435,
				},
				[108211] = {
					["source"] = "Люняшка-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117952] = {
					["encounterID"] = 2108,
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149663,
				},
				[1856] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[220510] = {
					["source"] = "Атыничотак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Коалесценция",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Ледокожая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Лоураген",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262554] = {
					["source"] = "Техник-эксперт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[49028] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263066] = {
					["source"] = "Ленивый лаборант",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[272903] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262811] = {
					["source"] = "Капля-пиявка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[260881] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279164] = {
					["source"] = "Крионий",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262940] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133753,
				},
				[281209] = {
					["source"] = "Каун",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186403] = {
					["source"] = "Сашкинадашка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Атыничотак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Эйлшторм",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276229] = {
					["encounterID"] = 2108,
					["source"] = "\"БУМБОТ\"",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141303,
				},
				[156064] = {
					["source"] = "Файэрола",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260372] = {
					["source"] = "Огнелетчица Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[242551] = {
					["source"] = "Пирсак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208693] = {
					["source"] = "Сашкинадашка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263583] = {
					["source"] = "Надсмотрщик Аскари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[58875] = {
					["source"] = "Цузам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291944] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79976] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61840,
				},
				[293946] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ниреида",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186406] = {
					["source"] = "Вавелпоя",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Дранкенштейн",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263202] = {
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[286581] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267546] = {
					["source"] = "Буйный гуляка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144231,
				},
				[263586] = {
					["source"] = "Надсмотрщик Аскари",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[280412] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Кабомба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Вазгард",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Белтан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Юниверсалити",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Цузам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[408] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191837] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269429] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[45181] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2094] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Свелога",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Кабомба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271456] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[289523] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288693] = {
					["source"] = "Замученная душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148893,
				},
				[260280] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[188389] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267551] = {
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[258622] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[257597] = {
					["type"] = "BUFF",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129227,
				},
				[160029] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108199] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268702] = {
					["type"] = "BUFF",
					["source"] = "Каменный яростень",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[263209] = {
					["source"] = "Кобольд-рудокоп",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130437,
				},
				[269313] = {
					["source"] = "Бесшабашная подрывница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[245686] = {
					["source"] = "Тзао",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114018] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259853] = {
					["type"] = "DEBUFF",
					["source"] = "Рикса Огневерт",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129231,
				},
				[191840] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262513] = {
					["source"] = "Огнелетчица Торговой компании",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133436,
				},
				[87024] = {
					["source"] = "Буранн-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["source"] = "Шемая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116680] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291170] = {
					["source"] = "Фаствульв",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269831] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Райянащитует",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269090] = {
					["source"] = "Артиллерист",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137029,
				},
				[271698] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[194844] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шикки",
					["npcID"] = 0,
				},
				[286976] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263215] = {
					["source"] = "Каменный яростень",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[267354] = {
					["source"] = "Наемный убийца",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[287999] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268709] = {
					["source"] = "Геомант Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[289277] = {
					["source"] = "Триниган",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260189] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[183436] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274459] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мэйдра",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Бтр",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263601] = {
					["source"] = "Надсмотрщик Аскари",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[292463] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260190] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[260829] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132338,
				},
				[8143] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Буранн-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Анджелинушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Аадмирал",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кундали-Галакронд",
					["npcID"] = 0,
				},
				[267433] = {
					["source"] = "Механожокей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[281744] = {
					["source"] = "Сайло",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271903] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[96231] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209858] = {
					["source"] = "Отдыхающий работник",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130436,
				},
				[278296] = {
					["source"] = "Коалесценция",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271526] = {
					["encounterID"] = 2106,
					["source"] = "Земляной яростень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[269099] = {
					["source"] = "Боевая машина Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[268836] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228318] = {
					["source"] = "Отдыхающий работник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130436,
				},
				[185311] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Кабомба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271784] = {
					["encounterID"] = 2105,
					["source"] = "Футбомбный хулиган",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138369,
				},
				[268846] = {
					["source"] = "Испытатель экспериментального оружия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[115310] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2825] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайзуна",
					["npcID"] = 0,
				},
				[197277] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50613] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197916] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280602] = {
					["source"] = "Механожокей",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130488,
				},
				[264760] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Тэдэум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251316] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Ахуллия-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буббу",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61999] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Фаствульв",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250870] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188592] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Рикардоггерс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Холикус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263103] = {
					["source"] = "Ленивый лаборант",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[272940] = {
					["source"] = "Орихорн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Аспиринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250871] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Райвуша",
					["npcID"] = 0,
				},
				[257593] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[197919] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Шинфрост",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269493] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[289423] = {
					["source"] = "Рикардоггерс",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256493] = {
					["type"] = "BUFF",
					["source"] = "Азеритовая футбомба",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[292361] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Аспиринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260838] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Белтан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228645] = {
					["source"] = "Руническое оружие",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27893,
				},
				[292364] = {
					["source"] = "Имеральд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Крейро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лечунамарс",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Имеральд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Байку",
					["npcID"] = 0,
				},
				[290467] = {
					["source"] = "Элевин",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257582] = {
					["encounterID"] = 2106,
					["source"] = "Земляной яростень",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[288024] = {
					["source"] = "Имеральд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Fuzzywuzzul-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262347] = {
					["encounterID"] = 2105,
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[285981] = {
					["source"] = "Вазгард",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206930] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260202] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[853] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Кабомба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268865] = {
					["source"] = "Испытатель экспериментального оружия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[184575] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262348] = {
					["source"] = "Ползучая мина",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133482,
				},
				[263628] = {
					["source"] = "Механомиротворец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[280605] = {
					["source"] = "Продавщица закусок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[231843] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273977] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Гопникюра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Белтан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280604] = {
					["source"] = "Продавщица закусок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[281517] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126462] = {
					["source"] = "Вазгард",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193456] = {
					["source"] = "Эшкетчум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89798] = {
					["source"] = "Лорд Виктор Нефарий",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 49799,
				},
				[251838] = {
					["source"] = "Царева",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270277] = {
					["type"] = "DEBUFF",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[221562] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258674] = {
					["source"] = "Отдыхающий работник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130436,
				},
				[270661] = {
					["source"] = "Белтан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268362] = {
					["source"] = "Бесшабашная подрывница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[245388] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Каун",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263636] = {
					["source"] = "Одурманенный вышибала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[294935] = {
					["source"] = "Аспиринн",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263637] = {
					["source"] = "Одурманенный вышибала",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[72968] = {
					["source"] = "Каун",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281621] = {
					["source"] = "Механожокей",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[31224] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5277] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27576] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["source"] = "Большой элементаль земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95072,
				},
				[267325] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Штрафослот",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Рикардоггерс",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Атыничотак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Каун",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Мантикорушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278159] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Блудфист",
					["npcID"] = 0,
				},
				[268712] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130653,
				},
				[275907] = {
					["encounterID"] = 2106,
					["source"] = "Азерокк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[231895] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["source"] = "Моха",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["source"] = "Шемая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257337] = {
					["encounterID"] = 2105,
					["source"] = "Платный разгонятель толпы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[51505] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77505] = {
					["source"] = "Шемая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255996] = {
					["encounterID"] = 2105,
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263262] = {
					["encounterID"] = 2105,
					["source"] = "Сланцеед",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134005,
				},
				[115450] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268815] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[288388] = {
					["source"] = "Восставшая душа",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[48265] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259856] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[192058] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212051] = {
					["source"] = "Фаствульв",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260318] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[57724] = {
					["source"] = "Шемая",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188035] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198103] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55233] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296142] = {
					["source"] = "Заблудшая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148894,
				},
				[201641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[57984] = {
					["source"] = "Большой элементаль огня",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95061,
				},
				[77762] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257371] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2484] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Тотем оков земли",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[260279] = {
					["encounterID"] = 2108,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260811] = {
					["encounterID"] = 2108,
					["source"] = "Шеф Разданк",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[53365] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290608] = {
					["source"] = "Кайаза",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8042] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Froziro-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2105,
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Фаствульв",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259474] = {
					["encounterID"] = 2107,
					["source"] = "Рикса Огневерт",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[262377] = {
					["source"] = "Ползучая мина",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133482,
				},
				[255937] = {
					["source"] = "Froziro-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59628] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Sneakylynx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Холикус",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210714] = {
					["source"] = "Шемая",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Бтр",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262268] = {
					["source"] = "Алхимик Торговой компании",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[1766] = {
					["source"] = "Sneakylynx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Царева",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ивнинг",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Тош",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268129] = {
					["source"] = "Продавщица закусок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[61882] = {
					["source"] = "Шемая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
			["health_statusbar_texture"] = "PlaterTexture",
			["dps"] = {
				["colors"] = {
					["noaggro"] = {
						0.113725490196078, -- [1]
						0.117647058823529, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "1",
			},
			["minor_width_scale"] = 0.490000009536743,
			["number_region_first_run"] = true,
			["patch_version"] = 6,
			["aura_alpha"] = 0.799999952316284,
			["aura_height"] = 18,
			["aura_timer"] = false,
			["plate_config"] = {
				["enemynpc"] = {
					["cast"] = {
						nil, -- [1]
						14, -- [2]
					},
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
				["enemyplayer"] = {
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
				["friendlyplayer"] = {
					["percent_text_ooc"] = true,
					["only_damaged"] = false,
					["health"] = {
						nil, -- [1]
						1, -- [2]
					},
					["actorname_text_size"] = 15,
					["health_incombat"] = {
						nil, -- [1]
						1, -- [2]
					},
					["actorname_text_spacing"] = 14,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 15,
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["all_names"] = true,
					["quest_enabled"] = false,
					["big_actortitle_text_size"] = 15,
					["health_incombat"] = {
						100, -- [1]
					},
					["percent_show_percent"] = false,
					["only_names"] = false,
					["relevance_state"] = 4,
				},
			},
			["indicator_enemyclass"] = true,
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
			},
		},
		["MainProfile"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535473591,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1528748982,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1537397927,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533663248,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535417117,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048199,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048441,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1535815768,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1542816185,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Name"] = "Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Icon"] = 2000853,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1547991413,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [16]
			},
			["aura_cache_by_name"] = {
				["знамя орды"] = {
					61574, -- [1]
					70535, -- [2]
					77951, -- [3]
					79064, -- [4]
					81679, -- [5]
					82259, -- [6]
					86591, -- [7]
					87093, -- [8]
					133801, -- [9]
					134106, -- [10]
					135871, -- [11]
					178685, -- [12]
					178687, -- [13]
					178688, -- [14]
					178689, -- [15]
					193926, -- [16]
					270445, -- [17]
					61574, -- [18]
					70535, -- [19]
					77951, -- [20]
					79064, -- [21]
					81679, -- [22]
					82259, -- [23]
					86591, -- [24]
					87093, -- [25]
					133801, -- [26]
					134106, -- [27]
					135871, -- [28]
					178685, -- [29]
					178687, -- [30]
					178688, -- [31]
					178689, -- [32]
					193926, -- [33]
					270445, -- [34]
				},
				["знамя альянса"] = {
					61573, -- [1]
					87214, -- [2]
					133808, -- [3]
					134107, -- [4]
					178686, -- [5]
					178691, -- [6]
					178692, -- [7]
					178693, -- [8]
					61573, -- [9]
					87214, -- [10]
					133808, -- [11]
					134107, -- [12]
					178686, -- [13]
					178691, -- [14]
					178692, -- [15]
					178693, -- [16]
				},
				["симбиот г'ууна"] = {
					277242, -- [1]
					277261, -- [2]
					277264, -- [3]
					277566, -- [4]
				},
				["мощь претендента"] = {
					206150, -- [1]
					206150, -- [2]
				},
			},
			["plate_config"] = {
				["friendlyplayer"] = {
					["only_thename"] = true,
					["percent_text_ooc"] = true,
					["only_damaged"] = false,
					["actorname_text_size"] = 15,
					["actorname_text_spacing"] = 14,
					["health_incombat"] = {
						nil, -- [1]
						1, -- [2]
					},
					["health"] = {
						nil, -- [1]
						1, -- [2]
					},
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 13,
					["big_actortitle_text_size"] = 13,
					["all_names"] = true,
					["relevance_state"] = 4,
					["only_names"] = false,
					["actorname_text_size"] = 11,
					["percent_text_enabled"] = true,
					["quest_enabled"] = false,
					["health_incombat"] = {
						100, -- [1]
					},
					["percent_show_percent"] = false,
				},
				["enemyplayer"] = {
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
				["enemynpc"] = {
					["cast"] = {
						nil, -- [1]
						14, -- [2]
					},
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
			},
			["first_run2"] = true,
			["npc_cache"] = {
				[138972] = {
					"Облачный разрушитель клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[135903] = {
					"Воплощение глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[126451] = {
					"Клешнедроб", -- [1]
					"SarasIsland", -- [2]
				},
				[146650] = {
					"Часовая-ветеран", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[126963] = {
					"Гвиндра Громовой Молот", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133345] = {
					"Ленивый лаборант", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136160] = {
					"Король Дазар", -- [1]
					"Гробница королей", -- [2]
				},
				[145372] = {
					"Дикая призывательница луны", -- [1]
					"", -- [2]
				},
				[138464] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147932] = {
					"Потревоженный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[131812] = {
					"Исказительница душ из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146653] = {
					"Прославленный охотник", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140768] = {
					"Гууру Разбиватель Гор", -- [1]
					"", -- [2]
				},
				[147933] = {
					"Геоактивный азеритовый осколыш", -- [1]
					"", -- [2]
				},
				[138466] = {
					"Обсидиановый дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[140769] = {
					"Золотая Жила", -- [1]
					"SarasIsland", -- [2]
				},
				[127477] = {
					"Морская черепаха", -- [1]
					"Тол Дагор", -- [2]
				},
				[138467] = {
					"Обсидиановый драконор", -- [1]
					"SarasIsland", -- [2]
				},
				[134629] = {
					"Чешуйчатый наездник на кролуске", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[141282] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147935] = {
					"Азерцветовый ползун", -- [1]
					"", -- [2]
				},
				[140259] = {
					"Крупный рунокопытный олень", -- [1]
					"", -- [2]
				},
				[138468] = {
					"Обсидиановый заклинатель пламени", -- [1]
					"SarasIsland", -- [2]
				},
				[417] = {
					"Pryynum", -- [1]
					"Сверкающие копи", -- [2]
				},
				[147936] = {
					"Азерцветовый камнеспин", -- [1]
					"SarasIsland", -- [2]
				},
				[140260] = {
					"Рунокопытная олениха", -- [1]
					"", -- [2]
				},
				[146657] = {
					"Часовой-ветеран", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136934] = {
					"Испытатель экспериментального оружия", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[141284] = {
					"Кул-тирасский смотритель приливов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131817] = {
					"Кроглот Зараженный", -- [1]
					"Подгнилье", -- [2]
				},
				[138470] = {
					"Обсидиановый дракон", -- [1]
					"", -- [2]
				},
				[145123] = {
					"Миара Песня Ночи", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[141285] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[147938] = {
					"Азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[131818] = {
					"Меченая сестра", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[132074] = {
					"Надзиратель Крикс", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[11661] = {
					"Поджигатель", -- [1]
					"Огненные Недра", -- [2]
				},
				[131819] = {
					"Прорицательница из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140263] = {
					"Рунокопытный олень", -- [1]
					"", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
				},
				[131821] = {
					"Безликая дева", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140777] = {
					"Самоцветный исполин", -- [1]
					"SarasIsland", -- [2]
				},
				[126969] = {
					"Тротак", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140266] = {
					"Колотый Рог", -- [1]
					"", -- [2]
				},
				[134893] = {
					"Паук-железнопут", -- [1]
					"", -- [2]
				},
				[131311] = {
					"Бушующий азерит", -- [1]
					"SarasIsland", -- [2]
				},
				[131823] = {
					"Сестра Маладия", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134894] = {
					"Железнопут-ткач", -- [1]
					"", -- [2]
				},
				[135406] = {
					"Ожившее золото", -- [1]
					"Гробница королей", -- [2]
				},
				[131824] = {
					"Сестра Солена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
				},
				[134895] = {
					"Железнопут-прядильщик", -- [1]
					"", -- [2]
				},
				[131825] = {
					"Сестра Брайар", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[133361] = {
					"Изнуренный слуга", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[129786] = {
					"Океанская макрура", -- [1]
					"SarasIsland", -- [2]
				},
				[130298] = {
					"Элементаль воды", -- [1]
					"", -- [2]
				},
				[138224] = {
					"Странствующая вестница Света", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[134898] = {
					"Ядоклык-отшельник", -- [1]
					"", -- [2]
				},
				[147948] = {
					"Сгустившийся азерит", -- [1]
					"", -- [2]
				},
				[137969] = {
					"Погребальный голем", -- [1]
					"Гробница королей", -- [2]
				},
				[127484] = {
					"Джес Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[148716] = {
					"Восставшая душа", -- [1]
					"Подгнилье", -- [2]
				},
				[134899] = {
					"Ядоклык-скрытень", -- [1]
					"", -- [2]
				},
				[137458] = {
					"Гниющая спора", -- [1]
					"Подгнилье", -- [2]
				},
				[130299] = {
					"Капля", -- [1]
					"", -- [2]
				},
				[134388] = {
					"Клубок змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[126845] = {
					"Капитан Джолли", -- [1]
					"Вольная Гавань", -- [2]
				},
				[131318] = {
					"Старейшина Ликса", -- [1]
					"Подгнилье", -- [2]
				},
				[127485] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[134389] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129788] = {
					"Мясник из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[137204] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[137716] = {
					"Донный краб", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134390] = {
					"Песочная змея", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134902] = {
					"Тенеплетник", -- [1]
					"", -- [2]
				},
				[127486] = {
					"Офицер корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[134903] = {
					"Истощающий ужас", -- [1]
					"", -- [2]
				},
				[142324] = {
					"Дельфин-синеспин", -- [1]
					"", -- [2]
				},
				[134904] = {
					"Темнолов", -- [1]
					"", -- [2]
				},
				[134137] = {
					"Служитель храма", -- [1]
					"Святилище Штормов", -- [2]
				},
				[126848] = {
					"Капитан Юдора", -- [1]
					"Вольная Гавань", -- [2]
				},
				[133627] = {
					"Талли Быстроцап", -- [1]
					"", -- [2]
				},
				[127488] = {
					"Маг огня корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138489] = {
					"Тень Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[140792] = {
					"Стервятник-ломоклюв", -- [1]
					"", -- [2]
				},
				[139001] = {
					"Ведмедь из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[147957] = {
					"Азеризалида", -- [1]
					"", -- [2]
				},
				[146678] = {
					"Сторожевое древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139002] = {
					"Тотемист из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[145399] = {
					"Дикая призывательница звезд", -- [1]
					"", -- [2]
				},
				[140794] = {
					"Когтешрам", -- [1]
					"", -- [2]
				},
				[139003] = {
					"Воин из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[140795] = {
					"Мрачный Кружач", -- [1]
					"", -- [2]
				},
				[139004] = {
					"Шаман из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[127106] = {
					"Офицер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127490] = {
					"Рыцарь-капитан Валири", -- [1]
					"Тол Дагор", -- [2]
				},
				[138493] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[132864] = {
					"Молодой крепкорук", -- [1]
					"", -- [2]
				},
				[135167] = {
					"Призрачный берсерк", -- [1]
					"Гробница королей", -- [2]
				},
				[131585] = {
					"Порабощенная стражница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134144] = {
					"Живой поток", -- [1]
					"Святилище Штормов", -- [2]
				},
				[134912] = {
					"Лиловый ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[141565] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131586] = {
					"Распорядитель банкета", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140798] = {
					"Скалокар", -- [1]
					"", -- [2]
				},
				[139007] = {
					"Дикий хищник", -- [1]
					"", -- [2]
				},
				[135169] = {
					"Тотем поглощения духа", -- [1]
					"Подгнилье", -- [2]
				},
				[141566] = {
					"Кишкодер из банды Резчиков", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131587] = {
					"Заколдованный капитан", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140799] = {
					"Ветролов", -- [1]
					"", -- [2]
				},
				[139008] = {
					"Древний терзатель", -- [1]
					"", -- [2]
				},
				[137473] = {
					"Капитан стражи Ату", -- [1]
					"Гробница королей", -- [2]
				},
				[138497] = {
					"Сумеречный чешуеклят", -- [1]
					"SarasIsland", -- [2]
				},
				[140800] = {
					"Облачнокрыл Падальщик", -- [1]
					"", -- [2]
				},
				[132868] = {
					"Сгусток азерита", -- [1]
					"", -- [2]
				},
				[137474] = {
					"Король Тималджи", -- [1]
					"Гробница королей", -- [2]
				},
				[130307] = {
					"Нестабильный тайфун", -- [1]
					"", -- [2]
				},
				[130435] = {
					"Одурманенный вышибала", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[142336] = {
					"Осьминожек", -- [1]
					"SarasIsland", -- [2]
				},
				[139010] = {
					"Свирепый острокоготь", -- [1]
					"", -- [2]
				},
				[139011] = {
					"Дикий защитник", -- [1]
					"", -- [2]
				},
				[131847] = {
					"Гуляка из дома Уэйкрестов", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134150] = {
					"Резчик рун Сорн", -- [1]
					"Святилище Штормов", -- [2]
				},
				[139012] = {
					"Дикий страж", -- [1]
					"", -- [2]
				},
				[147968] = {
					"Активный азерит", -- [1]
					"", -- [2]
				},
				[137989] = {
					"Бальзамировочный состав", -- [1]
					"Гробница королей", -- [2]
				},
				[140292] = {
					"Снегошкур-альфа", -- [1]
					"", -- [2]
				},
				[138501] = {
					"Сумеречный дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[139013] = {
					"Бешеный лунный совух", -- [1]
					"", -- [2]
				},
				[139269] = {
					"Сумрачный ужас", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[131849] = {
					"Обезумевший стрелок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140293] = {
					"Снегошкур-рычун", -- [1]
					"", -- [2]
				},
				[147202] = {
					"Оживший азеритовый осколыш", -- [1]
					"SarasIsland", -- [2]
				},
				[126983] = {
					"Красавчик Харлан", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127111] = {
					"Боец на веслах из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140038] = {
					"Глубинный угорь", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138247] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139015] = {
					"Дикий лунный совух", -- [1]
					"", -- [2]
				},
				[140295] = {
					"Волчонок-снегошкур", -- [1]
					"", -- [2]
				},
				[136713] = {
					"Работник с нагорья Арати", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[143622] = {
					"Дикий бес", -- [1]
					"Сверкающие копи", -- [2]
				},
				[123146] = {
					"Истерзанный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[139017] = {
					"Буйногрив", -- [1]
					"", -- [2]
				},
				[139529] = {
					"Муклай", -- [1]
					"", -- [2]
				},
				[140297] = {
					"Нок-арак", -- [1]
					"", -- [2]
				},
				[139530] = {
					"Земляной стенолом", -- [1]
					"", -- [2]
				},
				[145927] = {
					"Призывательница звезд Эллана", -- [1]
					"", -- [2]
				},
				[134157] = {
					"Тенеликий воин", -- [1]
					"Гробница королей", -- [2]
				},
				[139019] = {
					"Иглогрив", -- [1]
					"", -- [2]
				},
				[137484] = {
					"Король А'акул", -- [1]
					"Гробница королей", -- [2]
				},
				[134158] = {
					"Тенеликий защитник", -- [1]
					"Гробница королей", -- [2]
				},
				[138508] = {
					"Вортакс Несокрушимый", -- [1]
					"SarasIsland", -- [2]
				},
				[132879] = {
					"Кристальный великан", -- [1]
					"SarasIsland", -- [2]
				},
				[137485] = {
					"Одержимый кровью шпион", -- [1]
					"Гробница королей", -- [2]
				},
				[146185] = {
					"Огнежал-трутень", -- [1]
					"", -- [2]
				},
				[137486] = {
					"Королева Патлаа", -- [1]
					"Гробница королей", -- [2]
				},
				[138254] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[131858] = {
					"Шипастый страж", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138255] = {
					"Наводчик корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134417] = {
					"Глубоководный ритуалист", -- [1]
					"Святилище Штормов", -- [2]
				},
				[129802] = {
					"Земляной яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139023] = {
					"Яростный Кровозев", -- [1]
					"", -- [2]
				},
				[126092] = {
					"Гладиатор из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[134418] = {
					"Утонувший вестник глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[137233] = {
					"Чумная жаба", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139536] = {
					"Зара'тик - трутень", -- [1]
					"SarasIsland", -- [2]
				},
				[129547] = {
					"Кастетник из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139025] = {
					"Лунная Песнь", -- [1]
					"", -- [2]
				},
				[139537] = {
					"Зара'тик-куньчун", -- [1]
					"", -- [2]
				},
				[135699] = {
					"Тюремщик корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[128652] = {
					"Вик'Гот", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132885] = {
					"Элементаль воздуха", -- [1]
					"", -- [2]
				},
				[139538] = {
					"Стенолом Ха'вик", -- [1]
					"", -- [2]
				},
				[129548] = {
					"Громила из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[127757] = {
					"Оживленный почетный страж", -- [1]
					"Атал'Дазар", -- [2]
				},
				[126094] = {
					"Волногон из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[131863] = {
					"Раал Прожорливый", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[132887] = {
					"Детеныш смертежала", -- [1]
					"", -- [2]
				},
				[139284] = {
					"Чумной знахарь", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[131864] = {
					"Горак Тул", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136214] = {
					"Говорящая с ветрами Хелдис", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136470] = {
					"Продавщица закусок", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134935] = {
					"Мать Вишис", -- [1]
					"", -- [2]
				},
				[137238] = {
					"Арбалетчик Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[126095] = {
					"Вулисс", -- [1]
					"", -- [2]
				},
				[133912] = {
					"Кровавый осквернитель", -- [1]
					"Подгнилье", -- [2]
				},
				[135192] = {
					"Почитаемый ящер", -- [1]
					"Гробница королей", -- [2]
				},
				[127119] = {
					"Палубный матрос из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[129550] = {
					"Тихолапка из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[136984] = {
					"Ребан", -- [1]
					"Гробница королей", -- [2]
				},
				[139799] = {
					"Ученик Айронхалла", -- [1]
					"Святилище Штормов", -- [2]
				},
				[135961] = {
					"Глубинный крушитель", -- [1]
					"SarasIsland", -- [2]
				},
				[139800] = {
					"Ученик призывательницы штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[135962] = {
					"Скальный яростень", -- [1]
					"SarasIsland", -- [2]
				},
				[134939] = {
					"Щетинистый людоед", -- [1]
					"SarasIsland", -- [2]
				},
				[133660] = {
					"\"Бом-бот 9000\"", -- [1]
					"", -- [2]
				},
				[135963] = {
					"Элементаль земли", -- [1]
					"", -- [2]
				},
				[134940] = {
					"Щетинистый пронзатель", -- [1]
					"SarasIsland", -- [2]
				},
				[135964] = {
					"Гремящий землементаль", -- [1]
					"", -- [2]
				},
				[134173] = {
					"Оживленная капля", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140826] = {
					"Дух-чертополошник", -- [1]
					"", -- [2]
				},
				[134941] = {
					"Щетинистый паук", -- [1]
					"SarasIsland", -- [2]
				},
				[134174] = {
					"Тенеликий колдун", -- [1]
					"Гробница королей", -- [2]
				},
				[140827] = {
					"Хихикающий чертополошник", -- [1]
					"", -- [2]
				},
				[134942] = {
					"Щетинистый паучок", -- [1]
					"", -- [2]
				},
				[139804] = {
					"Инспектор Торговой компании", -- [1]
					"", -- [2]
				},
				[147225] = {
					"Экстрактор азерита", -- [1]
					"SarasIsland", -- [2]
				},
				[137246] = {
					"Осадная машина Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139805] = {
					"Механическая гончая", -- [1]
					"", -- [2]
				},
				[136735] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139806] = {
					"Взрывотехник Торговой компании", -- [1]
					"", -- [2]
				},
				[136224] = {
					"Стромгардская заклинательница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139807] = {
					"Геодезист Торговой компании", -- [1]
					"", -- [2]
				},
				[127124] = {
					"Официантка из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139808] = {
					"Дуболом из Торговой компании", -- [1]
					"", -- [2]
				},
				[134691] = {
					"Наэлектризованный дервиш", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139809] = {
					"Специалист по присвоению активов", -- [1]
					"", -- [2]
				},
				[135971] = {
					"Отступник-новобранец", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[136483] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135204] = {
					"Призрачный жрец-проклинатель", -- [1]
					"Гробница королей", -- [2]
				},
				[139810] = {
					"Менеджер среднего звена Торговой компании", -- [1]
					"", -- [2]
				},
				[144160] = {
					"Головорез Краснокрюк", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134437] = {
					"Робот-лекарь", -- [1]
					"", -- [2]
				},
				[140834] = {
					"Смеющееся пламя", -- [1]
					"SarasIsland", -- [2]
				},
				[139811] = {
					"Помощник менеджера", -- [1]
					"", -- [2]
				},
				[140067] = {
					"Рыжешкур-альфа", -- [1]
					"", -- [2]
				},
				[140835] = {
					"Хитрый огонек", -- [1]
					"", -- [2]
				},
				[134950] = {
					"Ужасный паук", -- [1]
					"", -- [2]
				},
				[131112] = {
					"Боец из братства Волнорезов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139812] = {
					"Продюсер Торговой компании", -- [1]
					"", -- [2]
				},
				[140068] = {
					"Рыжешкур-рычун", -- [1]
					"", -- [2]
				},
				[130325] = {
					"Глубоководный шустрый краб", -- [1]
					"", -- [2]
				},
				[140069] = {
					"Волк-рыжешкур", -- [1]
					"", -- [2]
				},
				[137511] = {
					"Головорез из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139814] = {
					"Специалист по поглощениям Хаззл", -- [1]
					"", -- [2]
				},
				[123289] = {
					"Блестопанцирный смертохват", -- [1]
					"SarasIsland", -- [2]
				},
				[140838] = {
					"Злонамеренный поток", -- [1]
					"", -- [2]
				},
				[11665] = {
					"Лавовый уничтожитель", -- [1]
					"Огненные Недра", -- [2]
				},
				[122266] = {
					"Твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[130582] = {
					"Отчаявшийся негодяй", -- [1]
					"Тол Дагор", -- [2]
				},
				[150818] = {
					"Потревоженный сгусток крови", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[140839] = {
					"Дух воды", -- [1]
					"", -- [2]
				},
				[123290] = {
					"Блестопанцирный трещот", -- [1]
					"SarasIsland", -- [2]
				},
				[129559] = {
					"Дуэлянт из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[125977] = {
					"Тотем воскрешения", -- [1]
					"Атал'Дазар", -- [2]
				},
				[883] = {
					"Олень", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[123291] = {
					"Блестопанцирный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[134701] = {
					"Кровавый образ", -- [1]
					"Подгнилье", -- [2]
				},
				[132910] = {
					"Визгун из племени Острогривов", -- [1]
					"", -- [2]
				},
				[137516] = {
					"Захватчик дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130584] = {
					"Кровошип", -- [1]
					"", -- [2]
				},
				[140843] = {
					"Дух воздуха", -- [1]
					"", -- [2]
				},
				[132911] = {
					"Трогг из племени Галечников", -- [1]
					"", -- [2]
				},
				[135470] = {
					"Ака'али Завоевательница", -- [1]
					"Гробница королей", -- [2]
				},
				[141867] = {
					"Матрос", -- [1]
					"", -- [2]
				},
				[133935] = {
					"Оживший страж", -- [1]
					"Гробница королей", -- [2]
				},
				[140077] = {
					"Крепкорук-топотун", -- [1]
					"", -- [2]
				},
				[137007] = {
					"Защитник Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[135472] = {
					"Заназал Мудрый", -- [1]
					"Гробница королей", -- [2]
				},
				[140334] = {
					"Темночешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[140335] = {
					"Темночешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[137521] = {
					"Фузилер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140336] = {
					"Темночешуйчатый крылатый змей", -- [1]
					"", -- [2]
				},
				[135475] = {
					"Кула Живодерка", -- [1]
					"Гробница королей", -- [2]
				},
				[140337] = {
					"Детеныш темночешуйчатого крылатого змея", -- [1]
					"", -- [2]
				},
				[140849] = {
					"Вредный дух камня", -- [1]
					"", -- [2]
				},
				[133685] = {
					"Оскверненный дух", -- [1]
					"Подгнилье", -- [2]
				},
				[144944] = {
					"Алчный кровосос", -- [1]
					"SarasIsland", -- [2]
				},
				[132918] = {
					"Налетчик из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[133430] = {
					"Гений Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[135989] = {
					"Щитоносец из армии Зула", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132919] = {
					"Гигант из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[133943] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[136246] = {
					"Стромгардский священник", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133432] = {
					"Алхимик Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130333] = {
					"Пластинчатый василиск", -- [1]
					"SarasIsland", -- [2]
				},
				[140085] = {
					"Большой елень", -- [1]
					"", -- [2]
				},
				[135736] = {
					"Рвач", -- [1]
					"", -- [2]
				},
				[140086] = {
					"Елениха", -- [1]
					"", -- [2]
				},
				[144948] = {
					"Кожекрылый охотник", -- [1]
					"", -- [2]
				},
				[132922] = {
					"Порабощенный мурлок", -- [1]
					"", -- [2]
				},
				[130334] = {
					"Пластинчатый взорень", -- [1]
					"SarasIsland", -- [2]
				},
				[140087] = {
					"Молодая елениха", -- [1]
					"", -- [2]
				},
				[140343] = {
					"Острое Крылышко", -- [1]
					"", -- [2]
				},
				[144949] = {
					"Тенелюбивый хищник", -- [1]
					"", -- [2]
				},
				[132923] = {
					"Мурлок из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[146485] = {
					"Невара Ночная Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[133436] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130335] = {
					"Пластинчатый кристалиск", -- [1]
					"SarasIsland", -- [2]
				},
				[140345] = {
					"Крик Бури", -- [1]
					"", -- [2]
				},
				[140857] = {
					"Нефритовый всполох", -- [1]
					"", -- [2]
				},
				[145975] = {
					"Молодой твердошкурый лось", -- [1]
					"", -- [2]
				},
				[140858] = {
					"Огневичок", -- [1]
					"SarasIsland", -- [2]
				},
				[145976] = {
					"Твердошкурый лось", -- [1]
					"", -- [2]
				},
				[138556] = {
					"Нечистый слизнюк", -- [1]
					"", -- [2]
				},
				[145977] = {
					"Исполинский твердошкурый лось", -- [1]
					"", -- [2]
				},
				[138557] = {
					"Живая скверна", -- [1]
					"", -- [2]
				},
				[135231] = {
					"Призрачный громила", -- [1]
					"Гробница королей", -- [2]
				},
				[138558] = {
					"Безликий", -- [1]
					"", -- [2]
				},
				[140861] = {
					"Пылевик", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140094] = {
					"Шипастый грязнорыл", -- [1]
					"", -- [2]
				},
				[138559] = {
					"Позабытый", -- [1]
					"", -- [2]
				},
				[129826] = {
					"Океанский клешнехват", -- [1]
					"SarasIsland", -- [2]
				},
				[140095] = {
					"Кровавый грязнорыл", -- [1]
					"", -- [2]
				},
				[138560] = {
					"Безликий ужас", -- [1]
					"", -- [2]
				},
				[144957] = {
					"Шали'и", -- [1]
					"", -- [2]
				},
				[135234] = {
					"Зараженный мастиф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140096] = {
					"Вепрь-грязнорыл", -- [1]
					"", -- [2]
				},
				[129699] = {
					"Людвиг фон Тортоллен", -- [1]
					"Вольная Гавань", -- [2]
				},
				[129827] = {
					"Океанский крошитель", -- [1]
					"SarasIsland", -- [2]
				},
				[135235] = {
					"Призрачная повелительница животных", -- [1]
					"Гробница королей", -- [2]
				},
				[140353] = {
					"Яркочешуйчатый зубач", -- [1]
					"", -- [2]
				},
				[140609] = {
					"Жестокий мако", -- [1]
					"SarasIsland", -- [2]
				},
				[140354] = {
					"Яркочешуйчатый крылатый змей", -- [1]
					"", -- [2]
				},
				[138563] = {
					"Вудакс", -- [1]
					"", -- [2]
				},
				[138819] = {
					"Мародер из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[136005] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140355] = {
					"Яркочешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[124583] = {
					"Гранатовый червь", -- [1]
					"SarasIsland", -- [2]
				},
				[138820] = {
					"Врайкул из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[149311] = {
					"Шандриса Оперенная Луна", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136006] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134215] = {
					"Лоринас, Бегущий в сумраке", -- [1]
					"", -- [2]
				},
				[138565] = {
					"Ма'лут", -- [1]
					"", -- [2]
				},
				[138821] = {
					"Воительница из дружины Кровавого Киля", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135239] = {
					"Призрачная знахарка", -- [1]
					"Гробница королей", -- [2]
				},
				[140357] = {
					"Ядовитый разоритель", -- [1]
					"", -- [2]
				},
				[138822] = {
					"Гарпунщица из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[135240] = {
					"Субстанция души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135496] = {
					"Ками Шестерикс", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136264] = {
					"Недоделанная мумия", -- [1]
					"Гробница королей", -- [2]
				},
				[138567] = {
					"Шаттот Каратель", -- [1]
					"", -- [2]
				},
				[138823] = {
					"Следопыт из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[135241] = {
					"Разоритель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[128551] = {
					"Мастиф братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[133963] = {
					"Подопытная крыса", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140360] = {
					"Яркая Спинка", -- [1]
					"", -- [2]
				},
				[138569] = {
					"Предвестник Вор'зукс", -- [1]
					"", -- [2]
				},
				[119724] = {
					"Приливный волноплеск", -- [1]
					"", -- [2]
				},
				[139337] = {
					"Кровопийца из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[136011] = {
					"Камнекров", -- [1]
					"", -- [2]
				},
				[138570] = {
					"Глашатай Раззаки", -- [1]
					"", -- [2]
				},
				[140106] = {
					"Смертежал - страж кладки", -- [1]
					"", -- [2]
				},
				[138571] = {
					"Странствующая вестница Света", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[129832] = {
					"Хрустяк", -- [1]
					"", -- [2]
				},
				[135245] = {
					"Крушитель из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131407] = {
					"Громила Торговой компании", -- [1]
					"", -- [2]
				},
				[140107] = {
					"Разящий смертежал", -- [1]
					"", -- [2]
				},
				[12259] = {
					"Гееннас", -- [1]
					"Огненные Недра", -- [2]
				},
				[134990] = {
					"Заряженная песчаная дьяволица", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139340] = {
					"Некромант из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[131408] = {
					"Дуболом Торговой компании", -- [1]
					"", -- [2]
				},
				[140108] = {
					"Скорпид-смертежал", -- [1]
					"", -- [2]
				},
				[140620] = {
					"Харибдида Южного моря", -- [1]
					"", -- [2]
				},
				[144970] = {
					"Калдорай-лучница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134991] = {
					"Крушитель из племени Песчаной Бури", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139341] = {
					"Темный чародей из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[135759] = {
					"Тотем земляной стены", -- [1]
					"Гробница королей", -- [2]
				},
				[144971] = {
					"Друид-древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[127019] = {
					"Тренировочный манекен", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135760] = {
					"Морпех 7-го легиона", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138063] = {
					"Пафосный курортник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138831] = {
					"Хорвульд Бич Морей", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134993] = {
					"Мчимба Бальзамировщик", -- [1]
					"Гробница королей", -- [2]
				},
				[139343] = {
					"Рабочий из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[131411] = {
					"Ядовитый змей", -- [1]
					"SarasIsland", -- [2]
				},
				[135761] = {
					"Громовой тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[138064] = {
					"Пафосная курортница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138576] = {
					"Безликое щупальце", -- [1]
					"", -- [2]
				},
				[144973] = {
					"Калдорай-часовой", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134994] = {
					"Призрачный охотник за головами", -- [1]
					"Гробница королей", -- [2]
				},
				[138577] = {
					"Сокрушающее щупальце", -- [1]
					"", -- [2]
				},
				[134739] = {
					"Голем-чистильщик", -- [1]
					"Гробница королей", -- [2]
				},
				[139345] = {
					"Кулу Шепот Смерти", -- [1]
					"", -- [2]
				},
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140113] = {
					"Ядожал", -- [1]
					"", -- [2]
				},
				[139346] = {
					"Говорящий с духами Галани", -- [1]
					"SarasIsland", -- [2]
				},
				[133461] = {
					"Жрец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[131670] = {
					"Прядильщица лоз из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138579] = {
					"Гигантское когтещупальце", -- [1]
					"", -- [2]
				},
				[139347] = {
					"Гола Берсерк", -- [1]
					"", -- [2]
				},
				[135765] = {
					"Тотем потоков", -- [1]
					"Гробница королей", -- [2]
				},
				[138068] = {
					"Пафосный курортник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139348] = {
					"Бага Ледяной Щит", -- [1]
					"SarasIsland", -- [2]
				},
				[133463] = {
					"Боевая машина Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146769] = {
					"Друид-хищница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138837] = {
					"Зара'тик - янтарный ваятель", -- [1]
					"", -- [2]
				},
				[134232] = {
					"Наемный убийца", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146770] = {
					"Друид-хищница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138838] = {
					"Зара'тик-богомол", -- [1]
					"SarasIsland", -- [2]
				},
				[140630] = {
					"Нарядный иглобрюх", -- [1]
					"", -- [2]
				},
				[11668] = {
					"Повелитель огня", -- [1]
					"Огненные Недра", -- [2]
				},
				[140375] = {
					"Дюнный скарабей - роевик", -- [1]
					"", -- [2]
				},
				[140631] = {
					"Скат Южных морей", -- [1]
					"SarasIsland", -- [2]
				},
				[138840] = {
					"Зара'тик-пронзатель", -- [1]
					"", -- [2]
				},
				[149331] = {
					"Сияющий азерит", -- [1]
					"", -- [2]
				},
				[135258] = {
					"Мародер из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135770] = {
					"Старший сержант Слэйд", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140376] = {
					"Дюнный скарабей", -- [1]
					"", -- [2]
				},
				[140632] = {
					"Чешуйчатая черепаха", -- [1]
					"SarasIsland", -- [2]
				},
				[138841] = {
					"Зара'тик - певец войны", -- [1]
					"SarasIsland", -- [2]
				},
				[139097] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139353] = {
					"Неживой герой", -- [1]
					"SarasIsland", -- [2]
				},
				[131677] = {
					"Плетельщица рун из ковена Мертвых Сердец", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140377] = {
					"Дюнный скарабей - собиратель", -- [1]
					"", -- [2]
				},
				[138842] = {
					"Та'кил Усилитель", -- [1]
					"", -- [2]
				},
				[139354] = {
					"Бутун Костеглод", -- [1]
					"", -- [2]
				},
				[140378] = {
					"Дюнный скарабей - страж роя", -- [1]
					"", -- [2]
				},
				[138843] = {
					"Вожак роя Скрак'ик", -- [1]
					"", -- [2]
				},
				[136541] = {
					"Желчный слизнюченыш", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136797] = {
					"Головолом из племени Галечников", -- [1]
					"", -- [2]
				},
				[149335] = {
					"Беспокойный азерит", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136798] = {
					"Костегрыз из племени Галечников", -- [1]
					"", -- [2]
				},
				[135007] = {
					"Страж сферы", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139357] = {
					"Шаркун из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[128434] = {
					"Ненасытный небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[136799] = {
					"Скалолом", -- [1]
					"", -- [2]
				},
				[138847] = {
					"Управляющий Боем Ка'ваз", -- [1]
					"", -- [2]
				},
				[17252] = {
					"AkraAshak", -- [1]
					"Сверкающие копи", -- [2]
				},
				[128435] = {
					"Ядовитый саурид", -- [1]
					"Атал'Дазар", -- [2]
				},
				[138848] = {
					"Танцующий с клинками Зорлак", -- [1]
					"SarasIsland", -- [2]
				},
				[19459] = {
					"Ripp", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139360] = {
					"Оживленный громила из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[138849] = {
					"Повелитель улья Викс'ик", -- [1]
					"", -- [2]
				},
				[137058] = {
					"Проклинательница Магода", -- [1]
					"", -- [2]
				},
				[131685] = {
					"Руническая послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138338] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[131431] = {
					"Автоматический инспектор по безопасности", -- [1]
					"", -- [2]
				},
				[136549] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[144993] = {
					"Бешеный чертополоховый медведь", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136806] = {
					"Камнемаг Баргг", -- [1]
					"", -- [2]
				},
				[149344] = {
					"Одержимый яростью азерит", -- [1]
					"", -- [2]
				},
				[137830] = {
					"Бледный пожиратель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[130485] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136295] = {
					"Утонувший обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[132713] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139110] = {
					"Искротворец", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[127799] = {
					"Дазар'айский почетный страж", -- [1]
					"Атал'Дазар", -- [2]
				},
				[133482] = {
					"Ползучая мина", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136297] = {
					"Забытый обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[131436] = {
					"Избранная кровавая матрона", -- [1]
					"Подгнилье", -- [2]
				},
				[134251] = {
					"Сенешаль М'бара", -- [1]
					"Гробница королей", -- [2]
				},
				[136810] = {
					"Землегнев из племени Галечников", -- [1]
					"", -- [2]
				},
				[144231] = {
					"Буйный гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136811] = {
					"Метатель из племени Галечников", -- [1]
					"", -- [2]
				},
				[137067] = {
					"Защитница дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139626] = {
					"Утопший матрос", -- [1]
					"Святилище Штормов", -- [2]
				},
				[144232] = {
					"Буйная гуляка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136812] = {
					"Геомант из племени Галечников", -- [1]
					"", -- [2]
				},
				[137068] = {
					"Кавалеристка с дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[151653] = {
					"Щупальце из Бездны", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[130488] = {
					"Механожокей", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[145001] = {
					"Ланара Лунный Сумрак", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138349] = {
					"Мстительный дух", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[149352] = {
					"Яркий азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[136047] = {
					"Ледосерд", -- [1]
					"", -- [2]
				},
				[134768] = {
					"Неутомимый песочный бегун", -- [1]
					"SarasIsland", -- [2]
				},
				[119103] = {
					"Черный головорез", -- [1]
					"", -- [2]
				},
				[149098] = {
					"Майев Песнь Теней", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[137328] = {
					"Элитный боец озаренных", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136049] = {
					"Саргассий", -- [1]
					"", -- [2]
				},
				[134514] = {
					"Глубинная сектантка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[149355] = {
					"Искаженный азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[137585] = {
					"Тотем хватки земли", -- [1]
					"", -- [2]
				},
				[149356] = {
					"Разъяренный азерцветовый кристалльник", -- [1]
					"", -- [2]
				},
				[131445] = {
					"Надзиратель блока", -- [1]
					"Тол Дагор", -- [2]
				},
				[140657] = {
					"Гигантский йети-крепкорог", -- [1]
					"", -- [2]
				},
				[134005] = {
					"Сланцеед", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140658] = {
					"Жесткая Шкура", -- [1]
					"", -- [2]
				},
				[149358] = {
					"Гигантский азерцветовый кристалльник", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[141938] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130620] = {
					"Ледобоец Сераф", -- [1]
					"", -- [2]
				},
				[149359] = {
					"Азеритовое чудище", -- [1]
					"", -- [2]
				},
				[141939] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129469] = {
					"Глубоководный ползун", -- [1]
					"", -- [2]
				},
				[149360] = {
					"Азеритовая глыба", -- [1]
					"", -- [2]
				},
				[130621] = {
					"Заклинатель штормов Брайсон", -- [1]
					"", -- [2]
				},
				[137591] = {
					"Тотем целительного прилива", -- [1]
					"Гробница королей", -- [2]
				},
				[129470] = {
					"Глубоководный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[129598] = {
					"Вьючный мул из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140662] = {
					"Старый длинномех", -- [1]
					"", -- [2]
				},
				[130622] = {
					"Заклинатель штормов Оран", -- [1]
					"", -- [2]
				},
				[129471] = {
					"Глубоководный пескорыск", -- [1]
					"", -- [2]
				},
				[129599] = {
					"Метатель ножей из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[134012] = {
					"Надсмотрщик Аскари", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129600] = {
					"Саурок из клана Соленой Чешуи", -- [1]
					"Вольная Гавань", -- [2]
				},
				[136828] = {
					"Воин из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[136829] = {
					"Метательница топоров из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[129601] = {
					"Гарпунщик из братства Волнорезов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[136830] = {
					"Охотница за головами из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[150136] = {
					"Безликий терзатель", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[140669] = {
					"Камнегривый ревун", -- [1]
					"", -- [2]
				},
				[136831] = {
					"Знахарь из племени Сухой Ветви", -- [1]
					"", -- [2]
				},
				[135552] = {
					"Меченный смертью поработитель", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[150137] = {
					"Безликий поработитель", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[129602] = {
					"Головорез из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140670] = {
					"Камнегривый силач", -- [1]
					"", -- [2]
				},
				[134786] = {
					"Песчаный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[139392] = {
					"Саурок из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[150139] = {
					"К'ткс, охотник из Бездны", -- [1]
					"Сценарий в Ульдире", -- [2]
				},
				[138369] = {
					"Футбомбная хулиганка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146813] = {
					"Гюнтер Серый", -- [1]
					"", -- [2]
				},
				[132740] = {
					"Ядовитая гидра", -- [1]
					"SarasIsland", -- [2]
				},
				[139393] = {
					"Cтраж гнезда из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[138626] = {
					"Аматет-приверженец", -- [1]
					"", -- [2]
				},
				[134788] = {
					"Иглохват-твердопанцирник", -- [1]
					"SarasIsland", -- [2]
				},
				[137091] = {
					"Послушница из Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139394] = {
					"Жрец топи из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[131974] = {
					"Лейтенант Вален", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138627] = {
					"Аматет-иерофант", -- [1]
					"", -- [2]
				},
				[134789] = {
					"Огромный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[139395] = {
					"Хранитель топи из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[133510] = {
					"Паладин Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138628] = {
					"Аматет-жрец", -- [1]
					"", -- [2]
				},
				[126918] = {
					"Стрелок из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139652] = {
					"Береговик из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[138629] = {
					"Викарий Джоса", -- [1]
					"SarasIsland", -- [2]
				},
				[136838] = {
					"Згордо Живодер", -- [1]
					"", -- [2]
				},
				[139397] = {
					"Охотник из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[134024] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134280] = {
					"Воздаятель Баатун", -- [1]
					"", -- [2]
				},
				[132745] = {
					"Ледочешуйчатый странник", -- [1]
					"", -- [2]
				},
				[135048] = {
					"Запачканный кровью поросенок", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139398] = {
					"Убийца из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[135816] = {
					"Мерзотень", -- [1]
					"Сверкающие копи", -- [2]
				},
				[148610] = {
					"Друид-древо", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[144772] = {
					"Леди Тамакин", -- [1]
					"", -- [2]
				},
				[138887] = {
					"Мистик из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[135049] = {
					"Грознокрылый ворон", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139399] = {
					"Крушитель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[139655] = {
					"Провидец из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135817] = {
					"Зефир", -- [1]
					"", -- [2]
				},
				[138632] = {
					"Страж Азуда", -- [1]
					"", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135050] = {
					"Жуткий капитан Вандегрим", -- [1]
					"Вольная Гавань", -- [2]
				},
				[149635] = {
					"Цветущий защитник", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139656] = {
					"Оракул из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135818] = {
					"Клубящийся солдат", -- [1]
					"", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[62005] = {
					"Зверь", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139657] = {
					"Гарпунер из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[135819] = {
					"Живое торнадо", -- [1]
					"", -- [2]
				},
				[134284] = {
					"Падший вестник смерти", -- [1]
					"Подгнилье", -- [2]
				},
				[134796] = {
					"Гигантский иглохват", -- [1]
					"", -- [2]
				},
				[135052] = {
					"Чумная жаба", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127049] = {
					"Геодезист из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139658] = {
					"Темножитель из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[131726] = {
					"Гуннольф Яростный", -- [1]
					"SarasIsland", -- [2]
				},
				[136076] = {
					"Беспокойное облако", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[144776] = {
					"Айрин Быстроногая", -- [1]
					"", -- [2]
				},
				[143753] = {
					"Вазун Говорящий со звездами", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[131727] = {
					"Фенра Коварная", -- [1]
					"SarasIsland", -- [2]
				},
				[134286] = {
					"Верховный маг Тамуура", -- [1]
					"", -- [2]
				},
				[145033] = {
					"Полярный охотник", -- [1]
					"", -- [2]
				},
				[133007] = {
					"Освобожденное чудовище", -- [1]
					"Подгнилье", -- [2]
				},
				[139660] = {
					"Мурлок из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[131728] = {
					"Рауль Стойкий", -- [1]
					"SarasIsland", -- [2]
				},
				[139661] = {
					"Добытчик из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[131729] = {
					"Лико", -- [1]
					"SarasIsland", -- [2]
				},
				[145035] = {
					"Проворный лис", -- [1]
					"", -- [2]
				},
				[137103] = {
					"Кровавый образ", -- [1]
					"Подгнилье", -- [2]
				},
				[139662] = {
					"Заклинатель дождя из племени Гнилой Чешуи", -- [1]
					"", -- [2]
				},
				[148618] = {
					"Верховный друид Андрений", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[146827] = {
					"Дикая собака", -- [1]
					"", -- [2]
				},
				[123853] = {
					"Волшебница Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139663] = {
					"Вязальщик камыша из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[140431] = {
					"Скальный козел", -- [1]
					"", -- [2]
				},
				[146828] = {
					"Дикий щенок", -- [1]
					"", -- [2]
				},
				[132755] = {
					"Падальщик-ломоклюв", -- [1]
					"", -- [2]
				},
				[129227] = {
					"Азерокк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140432] = {
					"Скальный прыгун", -- [1]
					"SarasIsland", -- [2]
				},
				[144782] = {
					"Брат Брюн", -- [1]
					"", -- [2]
				},
				[8889] = {
					"Надзиратель из клана Ярости Горна", -- [1]
					"Глубины Черной горы", -- [2]
				},
				[136083] = {
					"Забытый обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[130635] = {
					"Каменный яростень", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140689] = {
					"Ползун-лютоклык", -- [1]
					"", -- [2]
				},
				[139410] = {
					"Вис Бесшумный Клинок", -- [1]
					"", -- [2]
				},
				[140434] = {
					"Скальный камнерог", -- [1]
					"SarasIsland", -- [2]
				},
				[140690] = {
					"Гадюка-лютоклык", -- [1]
					"", -- [2]
				},
				[138644] = {
					"Квалдир-проклинатель", -- [1]
					"SarasIsland", -- [2]
				},
				[135830] = {
					"Ярость штормов", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[138645] = {
					"Квалдир - раздирательница душ", -- [1]
					"SarasIsland", -- [2]
				},
				[132760] = {
					"Равнинный ползун", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[145298] = {
					"Дикий пожиратель", -- [1]
					"", -- [2]
				},
				[146834] = {
					"Некромант-магистр", -- [1]
					"", -- [2]
				},
				[139670] = {
					"Моргок", -- [1]
					"", -- [2]
				},
				[134041] = {
					"Зараженный крестьянин", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146835] = {
					"Вурдалак", -- [1]
					"", -- [2]
				},
				[137880] = {
					"Защитница Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[130638] = {
					"Кроколиск-злобнокус", -- [1]
					"", -- [2]
				},
				[138648] = {
					"Сигрид Ткачиха Покровов", -- [1]
					"", -- [2]
				},
				[126928] = {
					"Корсар из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135322] = {
					"Золотой Змей", -- [1]
					"Гробница королей", -- [2]
				},
				[129231] = {
					"Рикса Огневерт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137881] = {
					"Рыцарь из Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[137626] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137882] = {
					"Арбалетчица из Северного удела", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136347] = {
					"Ученица жрецов моря", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138650] = {
					"Затерявшийся среди волн защитник", -- [1]
					"SarasIsland", -- [2]
				},
				[145303] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[122963] = {
					"Резан", -- [1]
					"Атал'Дазар", -- [2]
				},
				[131486] = {
					"Верховный экзарх Туралион", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140442] = {
					"Мускусный як", -- [1]
					"", -- [2]
				},
				[138651] = {
					"Сильверия Заклинательница Рифов", -- [1]
					"", -- [2]
				},
				[145304] = {
					"Дикий душитель", -- [1]
					"", -- [2]
				},
				[139675] = {
					"Искатель Глубин", -- [1]
					"", -- [2]
				},
				[130640] = {
					"Злобнокус-хвататель", -- [1]
					"", -- [2]
				},
				[146840] = {
					"Скелет-страж", -- [1]
					"", -- [2]
				},
				[130896] = {
					"Бочка черной пелены", -- [1]
					"Вольная Гавань", -- [2]
				},
				[145305] = {
					"Дикий громила", -- [1]
					"", -- [2]
				},
				[139676] = {
					"Говорящий с волнами Ормрг", -- [1]
					"SarasIsland", -- [2]
				},
				[135838] = {
					"Пепловей", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140444] = {
					"Матерый мускусный як", -- [1]
					"", -- [2]
				},
				[138653] = {
					"Хосвир Гниющий Остов", -- [1]
					"SarasIsland", -- [2]
				},
				[135839] = {
					"Болотный газовик", -- [1]
					"", -- [2]
				},
				[137375] = {
					"Экзоскелет озаренных", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[139678] = {
					"Брегоступ", -- [1]
					"SarasIsland", -- [2]
				},
				[127315] = {
					"Тотем воскрешения", -- [1]
					"Атал'Дазар", -- [2]
				},
				[146843] = {
					"Шипастый вурдалак", -- [1]
					"", -- [2]
				},
				[135329] = {
					"Матрона Бриндл", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140447] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146844] = {
					"Ольфкриг Подчиненный", -- [1]
					"", -- [2]
				},
				[131492] = {
					"Преданная жрица крови", -- [1]
					"Подгнилье", -- [2]
				},
				[144286] = {
					"Управляющая активами", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146845] = {
					"Рваный Джаред", -- [1]
					"", -- [2]
				},
				[139425] = {
					"Бешеная наседка", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[148893] = {
					"Замученная душа", -- [1]
					"Подгнилье", -- [2]
				},
				[136100] = {
					"Утонувший обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[148894] = {
					"Заблудшая душа", -- [1]
					"Подгнилье", -- [2]
				},
				[138660] = {
					"Туманная гончая", -- [1]
					"", -- [2]
				},
				[135846] = {
					"Песочная змея", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[146849] = {
					"Владычица духов Ровена", -- [1]
					"", -- [2]
				},
				[145058] = {
					"Тенеперый ворон", -- [1]
					"", -- [2]
				},
				[139429] = {
					"Каменный воин", -- [1]
					"", -- [2]
				},
				[134056] = {
					"Аква'сирр", -- [1]
					"Святилище Штормов", -- [2]
				},
				[146850] = {
					"Великий магистр Ульрих", -- [1]
					"", -- [2]
				},
				[145059] = {
					"Хитрый темнокрыл", -- [1]
					"", -- [2]
				},
				[122969] = {
					"Занчульская знахарка", -- [1]
					"Атал'Дазар", -- [2]
				},
				[129366] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145060] = {
					"Чудовищный тенеперый ворон", -- [1]
					"", -- [2]
				},
				[11673] = {
					"Древняя гончая недр", -- [1]
					"Огненные Недра", -- [2]
				},
				[126424] = {
					"Коралловый приливный краб", -- [1]
					"SarasIsland", -- [2]
				},
				[140455] = {
					"Колючешкурый бычок", -- [1]
					"", -- [2]
				},
				[146852] = {
					"Конрад Поработитель", -- [1]
					"", -- [2]
				},
				[145061] = {
					"Визжащий темнокрыл", -- [1]
					"", -- [2]
				},
				[122970] = {
					"Крадущийся теневой клинок", -- [1]
					"Атал'Дазар", -- [2]
				},
				[129367] = {
					"Воин бури из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140456] = {
					"Колючешкурый мускен", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[140968] = {
					"Гранатовый кусатель", -- [1]
					"SarasIsland", -- [2]
				},
				[139433] = {
					"Сестра страдания", -- [1]
					"", -- [2]
				},
				[134060] = {
					"Лорд Штормсонг", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140457] = {
					"Колючешкурая корова", -- [1]
					"", -- [2]
				},
				[146854] = {
					"Чернолапая Стелла", -- [1]
					"", -- [2]
				},
				[134828] = {
					"Воденыш", -- [1]
					"Святилище Штормов", -- [2]
				},
				[131246] = {
					"Аланаа", -- [1]
					"", -- [2]
				},
				[139690] = {
					"Океанский призыватель волн", -- [1]
					"SarasIsland", -- [2]
				},
				[139946] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140458] = {
					"Колючешкурый бык", -- [1]
					"", -- [2]
				},
				[146855] = {
					"Акина", -- [1]
					"", -- [2]
				},
				[145064] = {
					"Огонек", -- [1]
					"", -- [2]
				},
				[139691] = {
					"Океанский заклинатель штормов", -- [1]
					"SarasIsland", -- [2]
				},
				[145065] = {
					"Оперившийся темнокрыл", -- [1]
					"", -- [2]
				},
				[122972] = {
					"Дазар'айский авгур", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139692] = {
					"Океанский старейшина", -- [1]
					"SarasIsland", -- [2]
				},
				[129369] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134063] = {
					"Брат Айронхалл", -- [1]
					"Святилище Штормов", -- [2]
				},
				[139949] = {
					"Чумная знахарка", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[130521] = {
					"Палубный матрос из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[145067] = {
					"Тенеперый вороненок", -- [1]
					"", -- [2]
				},
				[139438] = {
					"Вестник духов Тоган", -- [1]
					"SarasIsland", -- [2]
				},
				[139694] = {
					"Едкий Панцирь", -- [1]
					"SarasIsland", -- [2]
				},
				[129370] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132530] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140974] = {
					"Старозоб", -- [1]
					"", -- [2]
				},
				[139695] = {
					"Шустроклешень", -- [1]
					"SarasIsland", -- [2]
				},
				[130522] = {
					"Морячка из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[146860] = {
					"Мародер из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136881] = {
					"Землепроходец из племени Острогривов", -- [1]
					"", -- [2]
				},
				[130437] = {
					"Кобольд-рудокоп", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132855] = {
					"Железнопут-быстролап", -- [1]
					"", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132532] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140976] = {
					"Червь-бурильщик", -- [1]
					"", -- [2]
				},
				[130011] = {
					"Буканьер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[126847] = {
					"Капитан Рауль", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139697] = {
					"Верховный шаман Клаксикар", -- [1]
					"SarasIsland", -- [2]
				},
				[142000] = {
					"Зловещее щупальце", -- [1]
					"", -- [2]
				},
				[126429] = {
					"Твердопанцирный коралловый краб", -- [1]
					"SarasIsland", -- [2]
				},
				[60197] = {
					"Тренировочный манекен", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[146862] = {
					"Поработительница из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136883] = {
					"Заклинатель шипов из племени Острогривов", -- [1]
					"", -- [2]
				},
				[134914] = {
					"Подвальный паук", -- [1]
					"", -- [2]
				},
				[139442] = {
					"Цзукан Спинолом", -- [1]
					"SarasIsland", -- [2]
				},
				[133557] = {
					"Разак Сковородкер", -- [1]
					"", -- [2]
				},
				[129372] = {
					"Метатель черной смолы", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134069] = {
					"Вол'зит Шепчущая", -- [1]
					"Святилище Штормов", -- [2]
				},
				[139664] = {
					"Злобноплав из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[146863] = {
					"Опустошитель из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[140978] = {
					"Страхотун", -- [1]
					"", -- [2]
				},
				[130012] = {
					"Опустошительница из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[142587] = {
					"Прожорливая личинка", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[136802] = {
					"Углекус", -- [1]
					"", -- [2]
				},
				[135263] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146864] = {
					"Заклинательница земли из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136885] = {
					"Шипомант из племени Острогривов", -- [1]
					"", -- [2]
				},
				[139188] = {
					"Стальной Мех", -- [1]
					"", -- [2]
				},
				[133379] = {
					"Гюрзис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139700] = {
					"Океанский шаман", -- [1]
					"SarasIsland", -- [2]
				},
				[129373] = {
					"Портовая заводчица", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134769] = {
					"Зазубренная клешня", -- [1]
					"", -- [2]
				},
				[136190] = {
					"Темный разлом", -- [1]
					"SarasIsland", -- [2]
				},
				[138996] = {
					"Говорящий с землей Джува", -- [1]
					"", -- [2]
				},
				[140980] = {
					"Нефритовый червь", -- [1]
					"", -- [2]
				},
				[151144] = {
					"Hati", -- [1]
					"Сверкающие копи", -- [2]
				},
				[139445] = {
					"Тумат", -- [1]
					"", -- [2]
				},
				[139701] = {
					"Низший океанский оракул", -- [1]
					"SarasIsland", -- [2]
				},
				[129529] = {
					"Задира из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[137625] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130653] = {
					"Бесшабашная подрывница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146866] = {
					"Порабощенный элементаль льда", -- [1]
					"SarasIsland", -- [2]
				},
				[130909] = {
					"Смрадная личинка", -- [1]
					"Подгнилье", -- [2]
				},
				[136186] = {
					"Жрица моря - спиритуалистка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[139006] = {
					"Фурболг из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[139351] = {
					"Глашатай теней Анголо", -- [1]
					"SarasIsland", -- [2]
				},
				[127879] = {
					"Щитоносец из армии Зула", -- [1]
					"Атал'Дазар", -- [2]
				},
				[135764] = {
					"Взрывной тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[146867] = {
					"Задира из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[140982] = {
					"Ледолом", -- [1]
					"SarasIsland", -- [2]
				},
				[11658] = {
					"Огненный великан", -- [1]
					"Огненные Недра", -- [2]
				},
				[127048] = {
					"Землекоп из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138625] = {
					"Аматет-каратель", -- [1]
					"", -- [2]
				},
				[135248] = {
					"Бриона Кровожадная", -- [1]
					"", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
				},
				[135763] = {
					"Порождение Бездны", -- [1]
					"", -- [2]
				},
				[139342] = {
					"Воин из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[140619] = {
					"Береговой ярдозуб", -- [1]
					"", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134423] = {
					"Обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138061] = {
					"Докер Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134331] = {
					"Король Рау'ай", -- [1]
					"Гробница королей", -- [2]
				},
				[146869] = {
					"Гюрум Жестокий", -- [1]
					"SarasIsland", -- [2]
				},
				[140984] = {
					"Червь-хладобур", -- [1]
					"SarasIsland", -- [2]
				},
				[147965] = {
					"Нестабильный азерит", -- [1]
					"", -- [2]
				},
				[138572] = {
					"Генерал Увош", -- [1]
					"", -- [2]
				},
				[139339] = {
					"Защитник из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140985] = {
					"Кислотный червь", -- [1]
					"", -- [2]
				},
				[130655] = {
					"Бобби Хаулис", -- [1]
					"Тол Дагор", -- [2]
				},
				[146870] = {
					"Чародейка Оназаи", -- [1]
					"SarasIsland", -- [2]
				},
				[136891] = {
					"Клыколом Бывалый", -- [1]
					"", -- [2]
				},
				[134283] = {
					"Анахорет Ланна", -- [1]
					"", -- [2]
				},
				[135246] = {
					"Лотти Колючка", -- [1]
					"", -- [2]
				},
				[138830] = {
					"Троваст Ведомый Звездами", -- [1]
					"", -- [2]
				},
				[133389] = {
					"Гальваззт", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[144972] = {
					"Калдорай-охотница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138427] = {
					"Гарпунщица из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[133870] = {
					"Больной плеточник", -- [1]
					"Подгнилье", -- [2]
				},
				[140986] = {
					"Кислотный бурильщик", -- [1]
					"", -- [2]
				},
				[128651] = {
					"Хадал Черная Бездна", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[140691] = {
					"Гигантский лютоклык", -- [1]
					"", -- [2]
				},
				[130400] = {
					"Сокрушитель из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139659] = {
					"Оракул из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[138428] = {
					"Мирмидон из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[134216] = {
					"Темная заклинательница Зарра", -- [1]
					"", -- [2]
				},
				[136893] = {
					"Землетряс Агган", -- [1]
					"", -- [2]
				},
				[140356] = {
					"Яркая Чешуйка", -- [1]
					"", -- [2]
				},
				[137405] = {
					"Цепкий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146833] = {
					"Некромантка-заклинательница", -- [1]
					"", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[129830] = {
					"Чудовищный Клац-Клац", -- [1]
					"SarasIsland", -- [2]
				},
				[138429] = {
					"Заклинательница волн из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[146873] = {
					"Убийственная буря", -- [1]
					"SarasIsland", -- [2]
				},
				[140988] = {
					"Сталерез", -- [1]
					"", -- [2]
				},
				[129517] = {
					"Оживленный ящер", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145850] = {
					"Гилнеасский сапер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[134686] = {
					"Взрослый кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138562] = {
					"Личинка из Бездны", -- [1]
					"", -- [2]
				},
				[146874] = {
					"Призывательница ветров Марайя", -- [1]
					"", -- [2]
				},
				[148921] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140989] = {
					"Костечешуйный червь", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134214] = {
					"Клинок Бездны Келейн", -- [1]
					"", -- [2]
				},
				[138561] = {
					"Безликий бичеватель разума", -- [1]
					"", -- [2]
				},
				[145851] = {
					"Калдорай - наездник на гиппогрифе", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[135247] = {
					"Варигг", -- [1]
					"", -- [2]
				},
				[138846] = {
					"Янтарнокрылый ловец ума", -- [1]
					"", -- [2]
				},
				[140441] = {
					"Молодой мускусный як", -- [1]
					"", -- [2]
				},
				[146875] = {
					"Валимок Зловредный", -- [1]
					"", -- [2]
				},
				[140990] = {
					"Костечешуйный плеватель", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[136012] = {
					"Горус Несдвигаемый", -- [1]
					"SarasIsland", -- [2]
				},
				[132802] = {
					"Йети-крепкорог", -- [1]
					"", -- [2]
				},
				[122086] = {
					"Сталешкур из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[126291] = {
					"Пехотинец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[134338] = {
					"Жрец моря - каратель", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138432] = {
					"Повелительница приливов Несса", -- [1]
					"", -- [2]
				},
				[146876] = {
					"Мачиту Жестокий", -- [1]
					"", -- [2]
				},
				[140991] = {
					"Мозгоплет", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[122263] = {
					"Твердопанцирный хрустогрыз", -- [1]
					"", -- [2]
				},
				[130639] = {
					"Злобнокус-пожиратель", -- [1]
					"", -- [2]
				},
				[138646] = {
					"Квалдир - призывательница туманов", -- [1]
					"", -- [2]
				},
				[140443] = {
					"Агрессивный мускусный як", -- [1]
					"", -- [2]
				},
				[136890] = {
					"Железный Оркас", -- [1]
					"", -- [2]
				},
				[140854] = {
					"Дух отлива", -- [1]
					"", -- [2]
				},
				[138481] = {
					"Хромит", -- [1]
					"SarasIsland", -- [2]
				},
				[132892] = {
					"Ветролист", -- [1]
					"", -- [2]
				},
				[122264] = {
					"Старая твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[139457] = {
					"Каменный цийлинь", -- [1]
					"", -- [2]
				},
				[139422] = {
					"Бронированный укротитель кролусков", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[136250] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[98035] = {
					"Зловещий охотник", -- [1]
					"Сверкающие копи", -- [2]
				},
				[138434] = {
					"Ведьма бурь из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[136643] = {
					"Экстрактор азерита", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140993] = {
					"Темнополз-охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[118175] = {
					"Элементаль бури", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137029] = {
					"Артиллерист", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146832] = {
					"Некромант-послушник", -- [1]
					"", -- [2]
				},
				[133663] = {
					"Фанатичный охотник за головами", -- [1]
					"Подгнилье", -- [2]
				},
				[146893] = {
					"Мистик из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[136249] = {
					"Сторожевой элементаль", -- [1]
					"Святилище Штормов", -- [2]
				},
				[126205] = {
					"Нажив-о-матик", -- [1]
					"", -- [2]
				},
				[127381] = {
					"Ильный краб", -- [1]
					"Тол Дагор", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[135365] = {
					"Матрона Альма", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[131527] = {
					"Лорд Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[146112] = {
					"Чернильная Шкура", -- [1]
					"", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[138647] = {
					"Хъяна Вестница Туманов", -- [1]
					"", -- [2]
				},
				[146880] = {
					"Голвран Загадочный", -- [1]
					"", -- [2]
				},
				[132807] = {
					"Цийлинь клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[139460] = {
					"Каменный ткач земли", -- [1]
					"", -- [2]
				},
				[122984] = {
					"Дазар'айский колосс", -- [1]
					"Атал'Дазар", -- [2]
				},
				[131402] = {
					"Клещ из Подгнилья", -- [1]
					"Подгнилье", -- [2]
				},
				[140979] = {
					"Длиннозуб", -- [1]
					"", -- [2]
				},
				[146881] = {
					"Ведун Бринвульф", -- [1]
					"", -- [2]
				},
				[138437] = {
					"Сзерис Завоеватель", -- [1]
					"", -- [2]
				},
				[134599] = {
					"Усиленный призыватель шторма", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[122973] = {
					"Дазар'айский духовник", -- [1]
					"Атал'Дазар", -- [2]
				},
				[133944] = {
					"Аспидис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139461] = {
					"Каменный скалогрыз", -- [1]
					"", -- [2]
				},
				[122089] = {
					"Оракул из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[131785] = {
					"Жужжащий трутень", -- [1]
					"Тол Дагор", -- [2]
				},
				[136391] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138438] = {
					"Разрыватель волн Сталеклык", -- [1]
					"", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[129828] = {
					"Океанский щелкун", -- [1]
					"SarasIsland", -- [2]
				},
				[139462] = {
					"Каменный глиночет", -- [1]
					"", -- [2]
				},
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[137395] = {
					"Опытный пехотинец", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136889] = {
					"Шипастый колдун Так", -- [1]
					"", -- [2]
				},
				[138659] = {
					"Оживленная гончая", -- [1]
					"", -- [2]
				},
				[132797] = {
					"Елененок", -- [1]
					"", -- [2]
				},
				[11659] = {
					"Разрушитель из недр", -- [1]
					"Огненные Недра", -- [2]
				},
				[139463] = {
					"Каменный уничтожитель", -- [1]
					"", -- [2]
				},
				[122090] = {
					"Сарашас Разоритель", -- [1]
					"", -- [2]
				},
				[146116] = {
					"Иглоспин-добытчик", -- [1]
					"", -- [2]
				},
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[144837] = {
					"Олень c Темных берегов", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[146890] = {
					"Руномант из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[139464] = {
					"Ревун клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[122986] = {
					"Дикий небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
					"", -- [2]
				},
				[133835] = {
					"Дикий кровавый роевик", -- [1]
					"Подгнилье", -- [2]
				},
				[129758] = {
					"Гренадер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138441] = {
					"Глубинная певунья", -- [1]
					"", -- [2]
				},
				[131383] = {
					"Заклинатель спор Занча", -- [1]
					"Подгнилье", -- [2]
				},
				[129527] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[143011] = {
					"Песочный окунь", -- [1]
					"", -- [2]
				},
				[133836] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[126185] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[144071] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[144842] = {
					"Прибрежный краб", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[144839] = {
					"Белохвостая олениха", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[133556] = {
					"Разак Сковородкер", -- [1]
					"", -- [2]
				},
				[135474] = {
					"Ведьма-послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[139466] = {
					"Кобальтовый камнестраж", -- [1]
					"", -- [2]
				},
				[138443] = {
					"Чешуестраж Булет", -- [1]
					"", -- [2]
				},
				[146119] = {
					"Огромный иглоспин", -- [1]
					"", -- [2]
				},
				[138187] = {
					"Искаженный ужас", -- [1]
					"Подгнилье", -- [2]
				},
				[129640] = {
					"Злобный портовый пес", -- [1]
					"Осада Боралуса", -- [2]
				},
				[144840] = {
					"Пятнистый олененок", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[129208] = {
					"Жуткий капитан Локвуд", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130024] = {
					"Мокрая корабельная крыса", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140975] = {
					"Младозоб", -- [1]
					"", -- [2]
				},
				[136892] = {
					"Брутарыл", -- [1]
					"", -- [2]
				},
				[140970] = {
					"Скальный разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[137517] = {
					"Разрушительница из дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138444] = {
					"Генерал Веспарак", -- [1]
					"", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[138469] = {
					"Обсидиановый чешуйчатый губитель", -- [1]
					"", -- [2]
				},
				[140643] = {
					"Лютый йети-крепкорог", -- [1]
					"", -- [2]
				},
				[139468] = {
					"Хребтодер Ку-Кон", -- [1]
					"", -- [2]
				},
				[145865] = {
					"Гилнеасский мушкетер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138281] = {
					"Безликий осквернитель", -- [1]
					"Подгнилье", -- [2]
				},
				[141283] = {
					"Кул-тирасский стражник", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139431] = {
					"Хранитель склепа", -- [1]
					"", -- [2]
				},
				[146889] = {
					"Вестник смерти из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[146118] = {
					"Агрессивный иглоспин", -- [1]
					"", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[146859] = {
					"Порабощенный элементаль камня", -- [1]
					"SarasIsland", -- [2]
				},
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[140076] = {
					"Крепкорук-вожак", -- [1]
					"", -- [2]
				},
				[134058] = {
					"Призывательница штормов Фэй", -- [1]
					"Святилище Штормов", -- [2]
				},
				[138446] = {
					"Призывательница пучин Зелисса", -- [1]
					"", -- [2]
				},
				[122605] = {
					"Окаменевший враг", -- [1]
					"", -- [2]
				},
				[146884] = {
					"Воевода Хьельскард", -- [1]
					"", -- [2]
				},
				[140262] = {
					"Молодая рунокопытная олениха", -- [1]
					"", -- [2]
				},
				[137764] = {
					"Опытная волшебница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[133585] = {
					"Дина \"Диззи\" Головокружилка", -- [1]
					"", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138888] = {
					"Ворожей из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[138447] = {
					"Воительница Салария", -- [1]
					"", -- [2]
				},
				[123292] = {
					"Блестопанцирный хвататель", -- [1]
					"SarasIsland", -- [2]
				},
				[139680] = {
					"Ловец из темных глубин", -- [1]
					"SarasIsland", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[130661] = {
					"Геомант Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140264] = {
					"Рунокопытный олененок", -- [1]
					"", -- [2]
				},
				[122971] = {
					"Дазар'айский сокрушитель", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132051] = {
					"Кровавый клещ", -- [1]
					"Подгнилье", -- [2]
				},
				[129526] = {
					"Морячок из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[146892] = {
					"Мародер из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[132819] = {
					"Волчонок-рыжешкур", -- [1]
					"", -- [2]
				},
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[140995] = {
					"Руинный охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[130404] = {
					"Крысолов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[122088] = {
					"Тихоступ из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[139459] = {
					"Каменный солдат", -- [1]
					"", -- [2]
				},
				[139674] = {
					"Глубинный ходок", -- [1]
					"SarasIsland", -- [2]
				},
				[148940] = {
					"Калдорайская химера", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[132820] = {
					"Поросенок-грязнорыл", -- [1]
					"", -- [2]
				},
				[130027] = {
					"Морпех корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[139473] = {
					"Каменный машинист Ну-Синь", -- [1]
					"", -- [2]
				},
				[133588] = {
					"Автоматический взрывчаткострел", -- [1]
					"", -- [2]
				},
				[137614] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130319] = {
					"Гоплит из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[129232] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134612] = {
					"Цепкие щупальца", -- [1]
					"Святилище Штормов", -- [2]
				},
				[139539] = {
					"Тавок, Молот Императрицы", -- [1]
					"", -- [2]
				},
				[136688] = {
					"Фанатичный бурильщик", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130318] = {
					"Пророк из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[122965] = {
					"Вол'каал", -- [1]
					"Атал'Дазар", -- [2]
				},
				[126423] = {
					"Коралловый краб", -- [1]
					"", -- [2]
				},
				[139026] = {
					"Призыватель Затмения", -- [1]
					"", -- [2]
				},
				[139672] = {
					"Бармашлеп", -- [1]
					"SarasIsland", -- [2]
				},
				[146895] = {
					"Вандал из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[138641] = {
					"Квалдир-ужасень", -- [1]
					"SarasIsland", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[140430] = {
					"Скальный козлик", -- [1]
					"SarasIsland", -- [2]
				},
				[126190] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[137940] = {
					"Сторожевая акула", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132893] = {
					"Дух огня", -- [1]
					"SarasIsland", -- [2]
				},
				[135834] = {
					"Пагубное облако", -- [1]
					"", -- [2]
				},
				[136208] = {
					"Стромгардский арбалетчик", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136207] = {
					"Стромгардская защитница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[134900] = {
					"Паук-ядоклык", -- [1]
					"", -- [2]
				},
				[139476] = {
					"Каменное чудище", -- [1]
					"", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[138635] = {
					"Командир Хусан", -- [1]
					"", -- [2]
				},
				[132056] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140679] = {
					"Снегобородый вендиго", -- [1]
					"", -- [2]
				},
				[139400] = {
					"Речной заклинатель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[134807] = {
					"Древняя твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[138643] = {
					"Квалдир-берсерк", -- [1]
					"", -- [2]
				},
				[140678] = {
					"Снегобородый ревун", -- [1]
					"", -- [2]
				},
				[131545] = {
					"Леди Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140294] = {
					"Волк-снегошкур", -- [1]
					"", -- [2]
				},
				[137097] = {
					"Заклинатель с дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138631] = {
					"Землепроходец Квадим", -- [1]
					"", -- [2]
				},
				[134616] = {
					"Подрастающий кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[128969] = {
					"Командир из корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139014] = {
					"Дикий лунный искатель", -- [1]
					"", -- [2]
				},
				[134794] = {
					"Темный ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[133593] = {
					"Техник-эксперт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[148584] = {
					"Верховный маг Мордент Вечерняя Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[128649] = {
					"Сержант Бейнбридж", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140675] = {
					"Мать стаи Муго", -- [1]
					"", -- [2]
				},
				[134617] = {
					"Детеныш кролуска", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139651] = {
					"Глубинник из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[136592] = {
					"Флинн Фэйрвинд", -- [1]
					"", -- [2]
				},
				[133384] = {
					"Меректа", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[128967] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136964] = {
					"Арбалетчица из Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[139009] = {
					"Дикий охотник", -- [1]
					"", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138968] = {
					"Стальной зев клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[145402] = {
					"Одичавшая безумица", -- [1]
					"", -- [2]
				},
				[139480] = {
					"Каменный защитник", -- [1]
					"", -- [2]
				},
				[130436] = {
					"Отдыхающий работник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134787] = {
					"Краб-иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[12101] = {
					"Лавоменталь", -- [1]
					"Огненные Недра", -- [2]
				},
				[126919] = {
					"Призывательница шторма из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140760] = {
					"Земляной великан", -- [1]
					"", -- [2]
				},
				[138969] = {
					"Дух могу из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[138623] = {
					"Аматет-лучник", -- [1]
					"", -- [2]
				},
				[139005] = {
					"Следопыт из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[134916] = {
					"Подвальный охотник", -- [1]
					"", -- [2]
				},
				[133852] = {
					"Живая гниль", -- [1]
					"Подгнилье", -- [2]
				},
				[126449] = {
					"Илоплюй", -- [1]
					"SarasIsland", -- [2]
				},
				[134364] = {
					"Отступник - хранитель яиц", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[132481] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[135562] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138890] = {
					"Даргульф Искатель Духов", -- [1]
					"", -- [2]
				},
				[145026] = {
					"Проворный падальщик", -- [1]
					"", -- [2]
				},
				[131850] = {
					"Обезумевший мастер выживания", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140250] = {
					"Елень", -- [1]
					"", -- [2]
				},
				[143985] = {
					"Поглощатор", -- [1]
					"Сверкающие копи", -- [2]
				},
				[127497] = {
					"Стражник корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138971] = {
					"Змей клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[122076] = {
					"Снежная сфера", -- [1]
					"", -- [2]
				},
				[133666] = {
					"Отвлекатор Головокружилки", -- [1]
					"", -- [2]
				},
				[134139] = {
					"Храмовник из Святилища Штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140850] = {
					"Шаловливый землевик", -- [1]
					"", -- [2]
				},
				[136044] = {
					"Ядозыбь", -- [1]
					"", -- [2]
				},
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["Name"] = "No Target Alpha [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 132177,
					["LastHookEdited"] = "",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1990989,
					["LastHookEdited"] = "",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Monk Statue [Plater]",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 627607,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [16]
			},
			["last_news_time"] = 1543749097,
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["aura_alpha"] = 0.799999952316284,
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Buff Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit - Important"] = 5,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["first_run3"] = true,
			["tank"] = {
				["colors"] = {
					["anothertank"] = {
						1, -- [1]
						0, -- [2]
						0.905882352941177, -- [3]
						1, -- [4]
					},
					["aggro"] = {
						0, -- [1]
						0.686274509803922, -- [2]
						0.0196078431372549, -- [3]
						1, -- [4]
					},
					["nocombat"] = {
						0.301960784313726, -- [1]
						0.00392156862745098, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["hook_auto_imported"] = {
				["Aura Reorder"] = 1,
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Jaina Encounter"] = 6,
				["Targetting Alpha"] = 3,
				["Players Targetting Amount"] = 4,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Blockade Encounter"] = 1,
			},
			["minor_width_scale"] = 0.490000009536743,
			["aura_height"] = 18,
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["patch_version"] = 6,
			["number_region_first_run"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_timer"] = false,
			["health_statusbar_texture"] = "PlaterTexture",
			["dps"] = {
				["colors"] = {
					["noaggro"] = {
						0.113725490196078, -- [1]
						0.117647058823529, -- [2]
						nil, -- [3]
						1, -- [4]
					},
				},
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
			["captured_spells"] = {
				[269279] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["type"] = "BUFF",
					["source"] = "Милистраз-Голдринн",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264556] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[260923] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[257410] = {
					["source"] = "Арбузянова",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роген-ТкачСмерти",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Восставший тихоступ",
					["npcID"] = 99541,
				},
				[29893] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287809] = {
					["type"] = "BUFF",
					["source"] = "Fistmepapi-Frostwolf",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Fistmepapi-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Затрата-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264050] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Jyrl-Kazzak",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260926] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[768] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271590] = {
					["type"] = "BUFF",
					["source"] = "Леди Уэйкрест",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Анпельсинка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264694] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[193475] = {
					["source"] = "Амадейро-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Анпельсинка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Jyrl-Kazzak",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Анпельсинка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288839] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уваля-СвежевательДуш",
					["npcID"] = 0,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Аргхам-ЧерныйШрам",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[268911] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["encounterID"] = 2116,
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Апсурд-СвежевательДуш",
					["npcID"] = 0,
				},
				[288841] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Локанутище-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210660] = {
					["source"] = "Арзамасатр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Хиндолер-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Изъувер",
					["npcID"] = 0,
				},
				[132404] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265337] = {
					["source"] = "Запачканный кровью поросенок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135048,
				},
				[256459] = {
					["source"] = "Быстроеухо-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228354] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27243] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288844] = {
					["source"] = "Восставшая душа",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[264040] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Габенушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фоксе-СтражСмерти",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277731] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азракил-СвежевательДуш",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268278] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[279648] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["source"] = "Локанутище-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Belfip",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[109132] = {
					["source"] = "Личкинк-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268271] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[273658] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[270058] = {
					["source"] = "Фрэбер-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108238] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[260741] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[260805] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[259455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сочняшечка-СвежевательДуш",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кодиак-Термоштепсель",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264038] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[265855] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12975] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилбилл-СвежевательДуш",
					["npcID"] = 0,
				},
				[12472] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Пенойвщи-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265954] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260551] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[23922] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113860] = {
					["type"] = "BUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Такхо-СтражСмерти",
					["npcID"] = 0,
				},
				[288693] = {
					["source"] = "Замученная душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148893,
				},
				[268125] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2115,
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[240559] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Димитруа-ВечнаяПесня",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[68054] = {
					["source"] = "Дживс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[263943] = {
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131677,
				},
				[118779] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261439] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[278124] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273653] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[31707] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[20473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Диджейкейн-СвежевательДуш",
					["npcID"] = 0,
				},
				[264456] = {
					["source"] = "Обезумевший стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[279793] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264712] = {
					["encounterID"] = 2115,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Таррантина-ВечнаяПесня",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Личкинк-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Мяузи-Ясеневыйлес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267907] = {
					["encounterID"] = 2114,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каспаров-Ясеневыйлес",
					["npcID"] = 0,
				},
				[261446] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[190356] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Руньён-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273657] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[2139] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анталлия-Ясеневыйлес",
					["npcID"] = 0,
				},
				[5302] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диджейкейн-СвежевательДуш",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272893] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261447] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[271105] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48181] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132168] = {
					["source"] = "Зёба",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Газгром-СвежевательДуш",
					["npcID"] = 0,
				},
				[234153] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265741] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[280177] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288305] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Апсурд-СвежевательДуш",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213405] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265352] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Роген-ТкачСмерти",
					["npcID"] = 0,
				},
				[260852] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[194384] = {
					["type"] = "BUFF",
					["source"] = "Анпельсинка-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264577] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251463] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272260] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нянтта",
					["npcID"] = 0,
				},
				[200389] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273294] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[278905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ксеинст-СвежевательДуш",
					["npcID"] = 0,
				},
				[266258] = {
					["encounterID"] = 2117,
					["source"] = "Портал друстов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133435,
				},
				[265364] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[263959] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[290264] = {
					["source"] = "Эдирин-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46968] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Личкинк-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[198793] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265371] = {
					["source"] = "Заколдованный капитан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131587,
				},
				[263961] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[8221] = {
					["source"] = "Локанутище-ТкачСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бычарич-Дракономор",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186403] = {
					["source"] = "Руньён-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265759] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[268306] = {
					["type"] = "BUFF",
					["source"] = "Леди Уэйкрест",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[265368] = {
					["source"] = "Заколдованный капитан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131587,
				},
				[261265] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[33395] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[107574] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265880] = {
					["source"] = "Матрона Альма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[205231] = {
					["encounterID"] = 2115,
					["source"] = "Созерцатель Тьмы",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[242551] = {
					["source"] = "Руньён-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 54320,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гирцен-Разувий",
					["npcID"] = 0,
				},
				[261266] = {
					["type"] = "BUFF",
					["source"] = "Сестра Маладия",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[30283] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164815] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265882] = {
					["source"] = "Матрона Альма",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135365,
				},
				[264027] = {
					["source"] = "Субстанция души",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135240,
				},
				[871] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266266] = {
					["encounterID"] = 2117,
					["source"] = "Горак Тул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[146739] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217832] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271178] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[264734] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[261438] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[186406] = {
					["type"] = "BUFF",
					["source"] = "Селоминчик-Галакронд",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Хранителъдуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Арзамасатр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Fistmepapi-Frostwolf",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20243] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rammy-Azshara",
					["npcID"] = 0,
				},
				[172] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289521] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265760] = {
					["source"] = "Матрона Бриндл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[688] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Шиолдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265813] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265761] = {
					["source"] = "Матрона Бриндл",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[268955] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Шиолдан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каэсли-ВечнаяПесня",
					["npcID"] = 0,
				},
				[160029] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дреикс",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рурарарури-СвежевательДуш",
					["npcID"] = 0,
				},
				[145205] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Хиндолер-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260569] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260697] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[8690] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264105] = {
					["source"] = "Меченая сестра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131818,
				},
				[1822] = {
					["encounterID"] = 2115,
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Клекотунья-Голдринн",
					["npcID"] = 0,
				},
				[6552] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264106] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Стэнзор-СвежевательДуш",
					["npcID"] = 0,
				},
				[260698] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[200166] = {
					["encounterID"] = 2115,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212792] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[475] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62061] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Онликх-ЧерныйШрам",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Газгром-СвежевательДуш",
					["npcID"] = 0,
				},
				[85222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сочняшечка-СвежевательДуш",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Атлична-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265642] = {
					["source"] = "Зараженный мастиф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135234,
				},
				[81262] = {
					["source"] = "Период цветения",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[267824] = {
					["source"] = "Субстанция души",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135240,
				},
				[260508] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[264110] = {
					["source"] = "Меченая сестра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131818,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Катури-ЧерныйШрам",
					["npcID"] = 0,
				},
				[260700] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[147833] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азракил-СвежевательДуш",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233490] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Руньён-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260701] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[265372] = {
					["source"] = "Порабощенный стражник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131585,
				},
				[120] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44544] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Амадейро-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268202] = {
					["encounterID"] = 2117,
					["source"] = "Меченный смертью поработитель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135552,
				},
				[102342] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Агасая-Ясеневыйлес",
					["npcID"] = 0,
				},
				[290464] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278551] = {
					["source"] = "Заклинательница шипов из ковена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131666,
				},
				[288388] = {
					["source"] = "Восставшая душа",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[289423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Таррантина-ВечнаяПесня",
					["npcID"] = 0,
				},
				[122] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233499] = {
					["type"] = "DEBUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260703] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[268077] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[264693] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[268086] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209859] = {
					["source"] = "Субстанция души",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135240,
				},
				[260512] = {
					["type"] = "BUFF",
					["source"] = "Оживленный голиаф",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[204366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Психонтрэ-СтражСмерти",
					["npcID"] = 0,
				},
				[292359] = {
					["source"] = "Царева",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Тиадари-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266035] = {
					["source"] = "Ведьма-послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135474,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меткаяплюха-СвежевательДуш",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Атлична-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268080] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20484] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235219] = {
					["encounterID"] = 2113,
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранаг-СвежевательДуш",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Тыкашка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранаг-СвежевательДуш",
					["npcID"] = 0,
				},
				[22568] = {
					["encounterID"] = 2114,
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106785] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Габенушка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264378] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ковыряла-Корольлич",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178119] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хрумля",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Ззандалар",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[233496] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Арзамасатр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Амадейро-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2336] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Катури-ЧерныйШрам",
					["npcID"] = 0,
				},
				[292363] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Протол-Борейскаятундра",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Локанутище-ТкачСмерти",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каспаров-Ясеневыйлес",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264510] = {
					["source"] = "Обезумевший стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[273836] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хилбилл-СвежевательДуш",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268088] = {
					["type"] = "BUFF",
					["source"] = "Сестра Маладия",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[233498] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Матершинник",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260696] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[257260] = {
					["source"] = "Шипастый страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265407] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[102793] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[198304] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Файнайа-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["encounterID"] = 2115,
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278567] = {
					["source"] = "Шипастый страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[264387] = {
					["source"] = "Прорицательница из ковена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131819,
				},
				[236502] = {
					["source"] = "Псистайл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Прорвем-СвежевательДуш",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Тиадари-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265410] = {
					["source"] = "Гуляка из дома Уэйкрестов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131847,
				},
				[285978] = {
					["source"] = "Мяузи-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Солнцеясное-Корольлич",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[102401] = {
					["type"] = "BUFF",
					["source"] = "Fistmepapi-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Хиндолер-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289308] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Фростскрим-Ясеневыйлес",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Атлична-СтражСмерти",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287379] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275378] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265391] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[236696] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[264520] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[2383] = {
					["source"] = "Хиндолер-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264384] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азракил-СвежевательДуш",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диджейкейн-СвежевательДуш",
					["npcID"] = 0,
				},
				[266181] = {
					["encounterID"] = 2117,
					["source"] = "Горак Тул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[278444] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[271559] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125439] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Димитруа-ВечнаяПесня",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Лимп-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264140] = {
					["source"] = "Шипастая гончая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131669,
				},
				[1706] = {
					["source"] = "Хранителъдуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рурарарури-СвежевательДуш",
					["npcID"] = 0,
				},
				[260907] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[270661] = {
					["source"] = "Хиндолер-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264525] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[1459] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232670] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шивтс-СвежевательДуш",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Солнцеясное-Корольлич",
					["npcID"] = 0,
				},
				[264655] = {
					["source"] = "Зараженный крестьянин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134041,
				},
				[199844] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Таррантина-ВечнаяПесня",
					["npcID"] = 0,
				},
				[260900] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[268234] = {
					["encounterID"] = 2115,
					["source"] = "Желчный слизнюченыш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136541,
				},
				[233497] = {
					["source"] = "Acioahh-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гриннадин-СвежевательДуш",
					["npcID"] = 0,
				},
				[198813] = {
					["type"] = "DEBUFF",
					["source"] = "Daliza-Kazzak",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54861] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Протол-Борейскаятундра",
					["npcID"] = 0,
				},
				[190456] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271174] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[278456] = {
					["source"] = "Прожорливая личинка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нянтта",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271175] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[278431] = {
					["source"] = "Прожорливая личинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142587,
				},
				[127797] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264150] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[102351] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290467] = {
					["source"] = "Лимп-ПиратскаяБухта",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гриннадин-СвежевательДуш",
					["npcID"] = 0,
				},
				[118] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Fistmepapi-Frostwolf",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264024] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[196718] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57755] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260699] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[216328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[264153] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[183752] = {
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blackberdy-Azshara",
					["npcID"] = 0,
				},
				[207386] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266198] = {
					["encounterID"] = 2117,
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102352] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шивтс-СвежевательДуш",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фоксе-СтражСмерти",
					["npcID"] = 0,
				},
				[278463] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[272970] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Стэнзор-СвежевательДуш",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Zky-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264923] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[281854] = {
					["encounterID"] = 2113,
					["source"] = "Daliza-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранаг-СвежевательДуш",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Незерлинд-СвежевательДуш",
					["npcID"] = 0,
				},
				[265881] = {
					["source"] = "Матрона Альма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[296142] = {
					["source"] = "Заблудшая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148894,
				},
				[261264] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[30455] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Уваля-СвежевательДуш",
					["npcID"] = 0,
				},
				[115767] = {
					["source"] = "Зёба",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Арзамасатр-Борейскаятундра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Хотрайд",
					["npcID"] = 0,
				},
				[40625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Айника-СвежевательДуш",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263905] = {
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131677,
				},
				[261440] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[105771] = {
					["source"] = "Зёба",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271115] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69179] = {
					["source"] = "Зёба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268122] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[1079] = {
					["encounterID"] = 2115,
					["source"] = "Fistmepapi-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранаг-СвежевательДуш",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Jyrl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Газгром-СвежевательДуш",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Диджейкейн-СвежевательДуш",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тиранаг-СвежевательДуш",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гриннадин-СвежевательДуш",
					["npcID"] = 0,
				},
				[225787] = {
					["source"] = "Фрэбер-СвежевательДуш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Йанеледи-СтражСмерти",
					["npcID"] = 0,
				},
				[264931] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Роген-ТкачСмерти",
					["npcID"] = 0,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фоксе-СтражСмерти",
					["npcID"] = 0,
				},
				[274420] = {
					["type"] = "BUFF",
					["source"] = "Acioahh-Frostwolf",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каспаров-Ясеневыйлес",
					["npcID"] = 0,
				},
				[30108] = {
					["source"] = "Acioahh-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278474] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[268893] = {
					["source"] = "Daliza-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278504] = {
					["source"] = "Руническая послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[268910] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Арзамасатр-Борейскаятундра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Зёба",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Паникатян-Дракономор",
					["npcID"] = 0,
				},
				[29166] = {
					["source"] = "Fistmepapi-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Тромгул-ПиратскаяБухта",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228600] = {
					["source"] = "Jyrl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Нирлана-Азурегос",
					["npcID"] = 0,
				},
			},
			["indicator_enemyclass"] = true,
		},
	},
}
