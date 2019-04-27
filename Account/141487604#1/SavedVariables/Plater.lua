
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
		["Зёбедам - Ревущий фьорд"] = "MyNewProfile",
		["Никсиамчмо - Ревущий фьорд"] = "Default",
		["Ппробник - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Зёба - Ревущий фьорд"] = {
			["captured_spells"] = {
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гидротатар-Борейскаятундра",
					["npcID"] = 0,
				},
			},
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Attacking Specific Unit"] = 1,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Target Color"] = 3,
				["Aura Reorder"] = 1,
				["Reorder Nameplate"] = 3,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1537884697,
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
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 399,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1539013601,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538066775,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
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
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538429739,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538237586,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1539201768,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1538256464,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1543253273,
					["PlaterCore"] = 1,
					["Name"] = "Color Change [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1547991413,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Border Color [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1539015649,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
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
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1539201849,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 190,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1539187387,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1543250950,
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["ScriptType"] = 3,
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
				}, -- [1]
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
				}, -- [6]
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
				}, -- [7]
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
				}, -- [13]
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
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
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
				}, -- [15]
			},
			["aura_alpha"] = 0.849999964237213,
			["patch_version"] = 3,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["plate_config"] = {
				["friendlyplayer"] = {
					["actorname_text_spacing"] = 9,
				},
				["friendlynpc"] = {
					["big_actortitle_text_size"] = 9,
					["actorname_text_spacing"] = 9,
				},
			},
			["minor_width_scale"] = 0.899999976158142,
			["extra_icon_auras"] = {
				277242, -- [1]
			},
		},
		["MyNewProfile"] = {
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
				["enemynpc"] = {
					["level_text_size"] = 10,
					["cast"] = {
						150, -- [1]
					},
					["castbar_enabled"] = true,
					["power_percent_text_enabled"] = true,
					["healthbar_enabled"] = true,
					["power_percent_text_alpha"] = 1,
					["mana_incombat"] = {
						150, -- [1]
						10, -- [2]
					},
					["actorname_text_outline"] = "OUTLINE",
					["power_percent_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["y_position_offset"] = -50,
					["power_percent_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["power_percent_text_anchor"] = {
						["y"] = 0,
						["x"] = 0,
						["side"] = 9,
					},
					["power_percent_text_size"] = 9,
					["healthbar_color"] = {
						0.564706, -- [1]
						0.933333, -- [2]
						0.564706, -- [3]
						1, -- [4]
					},
					["healthbar_color_by_hp"] = false,
					["cast_incombat"] = {
						150, -- [1]
						10, -- [2]
					},
					["click_through"] = false,
					["power_percent_text_font"] = "Arial Narrow",
					["power_percent_text_outline"] = "OUTLINE",
					["power_enabled"] = true,
					["power_percent_text_color"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["actorname_text_size"] = 10,
					["spellname_text_size"] = 10,
					["spellpercent_text_size"] = 10,
					["mana"] = {
						150, -- [1]
						10, -- [2]
					},
					["pvp_always_incombat"] = true,
					["percent_text_size"] = 10,
					["health_incombat"] = {
						150, -- [1]
						12, -- [2]
					},
					["health"] = {
						150, -- [1]
					},
					["actorname_text_anchor"] = {
						["side"] = 8,
					},
					["level_text_enabled"] = false,
				},
				["enemyplayer"] = {
					["health_incombat"] = {
						nil, -- [1]
						13, -- [2]
					},
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 13,
					["big_actortitle_text_size"] = 13,
					["all_names"] = true,
					["health_incombat"] = {
						100, -- [1]
					},
					["only_names"] = false,
					["percent_text_enabled"] = true,
					["quest_enabled"] = false,
					["relevance_state"] = 4,
					["actorname_text_size"] = 11,
					["percent_show_percent"] = false,
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
				[139486] = {
					"Неболом", -- [1]
					"", -- [2]
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
				[140264] = {
					"Рунокопытный олененок", -- [1]
					"", -- [2]
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
				[129529] = {
					"Задира из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
				},
				[138989] = {
					"Соленый Плавник", -- [1]
					"SarasIsland", -- [2]
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
				[134900] = {
					"Паук-ядоклык", -- [1]
					"", -- [2]
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
				[137487] = {
					"Охотничий ящер", -- [1]
					"Гробница королей", -- [2]
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
				[133666] = {
					"Отвлекатор Головокружилки", -- [1]
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
				[144955] = {
					"Зал'зи Кровоглот", -- [1]
					"", -- [2]
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
				[135763] = {
					"Порождение Бездны", -- [1]
					"", -- [2]
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
				[138846] = {
					"Янтарнокрылый ловец ума", -- [1]
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
				[143215] = {
					"Косатка", -- [1]
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
				[140661] = {
					"Долинный Гром", -- [1]
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
				[144245] = {
					"Манта Южных морей", -- [1]
					"", -- [2]
				},
				[130622] = {
					"Заклинатель штормов Оран", -- [1]
					"", -- [2]
				},
				[139384] = {
					"Боец из клана Скользящего Плавника", -- [1]
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
				[139387] = {
					"Насса Хладнокровный", -- [1]
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
				[139389] = {
					"Волшасис Стальная Чешуя", -- [1]
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
				[136833] = {
					"Жрец яда из племени Сухой Ветви", -- [1]
					"", -- [2]
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
				[139651] = {
					"Глубинник из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[140675] = {
					"Мать стаи Муго", -- [1]
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
				[138631] = {
					"Землепроходец Квадим", -- [1]
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
				[134794] = {
					"Темный ползун", -- [1]
					"SarasIsland", -- [2]
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
				[134283] = {
					"Анахорет Ланна", -- [1]
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
				[138635] = {
					"Командир Хусан", -- [1]
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
				[139407] = {
					"Клыкострах", -- [1]
					"", -- [2]
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
				[139664] = {
					"Злобноплав из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
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
				[139411] = {
					"Многозуб", -- [1]
					"SarasIsland", -- [2]
				},
				[138644] = {
					"Квалдир-проклинатель", -- [1]
					"SarasIsland", -- [2]
				},
				[139412] = {
					"Гашас", -- [1]
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
				[139414] = {
					"Жрец топи Васс", -- [1]
					"SarasIsland", -- [2]
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
				[139415] = {
					"Слизешкур", -- [1]
					"SarasIsland", -- [2]
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
				[139416] = {
					"Волшас", -- [1]
					"SarasIsland", -- [2]
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
				[130639] = {
					"Злобнокус-пожиратель", -- [1]
					"", -- [2]
				},
				[138650] = {
					"Затерявшийся среди волн защитник", -- [1]
					"SarasIsland", -- [2]
				},
				[145303] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139418] = {
					"Недвижный", -- [1]
					"SarasIsland", -- [2]
				},
				[129232] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
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
				[139677] = {
					"Глашатай пучины", -- [1]
					"SarasIsland", -- [2]
				},
				[135839] = {
					"Болотный газовик", -- [1]
					"", -- [2]
				},
				[139422] = {
					"Бронированный укротитель кролусков", -- [1]
					"Храм Сетралисс", -- [2]
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
				[132855] = {
					"Железнопут-быстролап", -- [1]
					"", -- [2]
				},
				[129367] = {
					"Воин бури из братства Трюмных Крыс", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140456] = {
					"Колючешкурый мускен", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140968] = {
					"Гранатовый кусатель", -- [1]
					"SarasIsland", -- [2]
				},
				[126847] = {
					"Капитан Рауль", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139433] = {
					"Сестра страдания", -- [1]
					"", -- [2]
				},
				[134769] = {
					"Зазубренная клешня", -- [1]
					"", -- [2]
				},
				[138890] = {
					"Даргульф Искатель Духов", -- [1]
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
				[126205] = {
					"Нажив-о-матик", -- [1]
					"", -- [2]
				},
				[122971] = {
					"Дазар'айский сокрушитель", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139690] = {
					"Океанский призыватель волн", -- [1]
					"SarasIsland", -- [2]
				},
				[139946] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[127482] = {
					"Сточный злобнокус", -- [1]
					"Тол Дагор", -- [2]
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
				[12101] = {
					"Лавоменталь", -- [1]
					"Огненные Недра", -- [2]
				},
				[136934] = {
					"Испытатель экспериментального оружия", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139691] = {
					"Океанский заклинатель штормов", -- [1]
					"SarasIsland", -- [2]
				},
				[129527] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[132713] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136549] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[122965] = {
					"Вол'каал", -- [1]
					"Атал'Дазар", -- [2]
				},
				[145065] = {
					"Оперившийся темнокрыл", -- [1]
					"", -- [2]
				},
				[127480] = {
					"Жалящий паразит", -- [1]
					"Тол Дагор", -- [2]
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
				[140854] = {
					"Дух отлива", -- [1]
					"", -- [2]
				},
				[132892] = {
					"Ветролист", -- [1]
					"", -- [2]
				},
				[139674] = {
					"Глубинный ходок", -- [1]
					"SarasIsland", -- [2]
				},
				[122264] = {
					"Старая твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[136347] = {
					"Ученица жрецов моря", -- [1]
					"Святилище Штормов", -- [2]
				},
				[136798] = {
					"Костегрыз из племени Галечников", -- [1]
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
				[138888] = {
					"Ворожей из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145067] = {
					"Тенеперый вороненок", -- [1]
					"", -- [2]
				},
				[129526] = {
					"Морячок из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
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
				[137478] = {
					"Королева Уаси", -- [1]
					"Гробница королей", -- [2]
				},
				[133345] = {
					"Ленивый лаборант", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146859] = {
					"Порабощенный элементаль камня", -- [1]
					"SarasIsland", -- [2]
				},
				[140974] = {
					"Старозоб", -- [1]
					"", -- [2]
				},
				[136688] = {
					"Фанатичный бурильщик", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[139695] = {
					"Шустроклешень", -- [1]
					"SarasIsland", -- [2]
				},
				[120651] = {
					"Взрывчатка", -- [1]
					"Вольная Гавань", -- [2]
				},
				[130522] = {
					"Морячка из Вольной Гавани", -- [1]
					"Вольная Гавань", -- [2]
				},
				[126832] = {
					"Небесный капитан Крагг", -- [1]
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
				[145026] = {
					"Проворный падальщик", -- [1]
					"", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[140038] = {
					"Глубинный угорь", -- [1]
					"Святилище Штормов", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136186] = {
					"Жрица моря - спиритуалистка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[133972] = {
					"Тяжелое орудие", -- [1]
					"Тол Дагор", -- [2]
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
				[132074] = {
					"Надзиратель Крикс", -- [1]
					"Фронт Арати (Орда)", -- [2]
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
				[135761] = {
					"Громовой тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[146862] = {
					"Поработительница из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136883] = {
					"Заклинатель шипов из племени Острогривов", -- [1]
					"", -- [2]
				},
				[139341] = {
					"Темный чародей из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
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
				[137764] = {
					"Опытная волшебница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[146863] = {
					"Опустошитель из племени Злых Туманов", -- [1]
					"SarasIsland", -- [2]
				},
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[130012] = {
					"Опустошительница из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140619] = {
					"Береговой ярдозуб", -- [1]
					"", -- [2]
				},
				[135248] = {
					"Бриона Кровожадная", -- [1]
					"", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140441] = {
					"Молодой мускусный як", -- [1]
					"", -- [2]
				},
				[139337] = {
					"Кровопийца из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
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
				[127019] = {
					"Тренировочный манекен", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139700] = {
					"Океанский шаман", -- [1]
					"SarasIsland", -- [2]
				},
				[129373] = {
					"Портовая заводчица", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132893] = {
					"Дух огня", -- [1]
					"SarasIsland", -- [2]
				},
				[140691] = {
					"Гигантский лютоклык", -- [1]
					"", -- [2]
				},
				[129830] = {
					"Чудовищный Клац-Клац", -- [1]
					"SarasIsland", -- [2]
				},
				[140980] = {
					"Нефритовый червь", -- [1]
					"", -- [2]
				},
				[138562] = {
					"Личинка из Бездны", -- [1]
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
				[130318] = {
					"Пророк из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[132760] = {
					"Равнинный ползун", -- [1]
					"Фронт Арати (Орда)", -- [2]
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
				[134214] = {
					"Клинок Бездны Келейн", -- [1]
					"", -- [2]
				},
				[138561] = {
					"Безликий бичеватель разума", -- [1]
					"", -- [2]
				},
				[140861] = {
					"Пылевик", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[149311] = {
					"Шандриса Оперенная Луна", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[60197] = {
					"Тренировочный манекен", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[132056] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
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
				[131669] = {
					"Шипастая гончая", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138647] = {
					"Хъяна Вестница Туманов", -- [1]
					"", -- [2]
				},
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136890] = {
					"Железный Оркас", -- [1]
					"", -- [2]
				},
				[124583] = {
					"Гранатовый червь", -- [1]
					"SarasIsland", -- [2]
				},
				[140108] = {
					"Скорпид-смертежал", -- [1]
					"", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[137614] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[132797] = {
					"Елененок", -- [1]
					"", -- [2]
				},
				[138646] = {
					"Квалдир - призывательница туманов", -- [1]
					"", -- [2]
				},
				[151144] = {
					"Hati", -- [1]
					"Сверкающие копи", -- [2]
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
				[136249] = {
					"Сторожевой элементаль", -- [1]
					"Святилище Штормов", -- [2]
				},
				[131261] = {
					"Даркис", -- [1]
					"", -- [2]
				},
				[140985] = {
					"Кислотный червь", -- [1]
					"", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[149356] = {
					"Разъяренный азерцветовый кристалльник", -- [1]
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
				[140979] = {
					"Длиннозуб", -- [1]
					"", -- [2]
				},
				[134908] = {
					"Кровожвал", -- [1]
					"SarasIsland", -- [2]
				},
				[140978] = {
					"Страхотун", -- [1]
					"", -- [2]
				},
				[133944] = {
					"Аспидис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140986] = {
					"Кислотный бурильщик", -- [1]
					"", -- [2]
				},
				[138427] = {
					"Гарпунщица из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[134909] = {
					"Стрекочущий паук-прядильщик", -- [1]
					"SarasIsland", -- [2]
				},
				[136892] = {
					"Брутарыл", -- [1]
					"", -- [2]
				},
				[132885] = {
					"Элементаль воздуха", -- [1]
					"", -- [2]
				},
				[138641] = {
					"Квалдир-ужасень", -- [1]
					"SarasIsland", -- [2]
				},
				[133510] = {
					"Паладин Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[130400] = {
					"Сокрушитель из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[139340] = {
					"Некромант из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[138428] = {
					"Мирмидон из клана Злобного Плавника", -- [1]
					"", -- [2]
				},
				[136799] = {
					"Скалолом", -- [1]
					"", -- [2]
				},
				[136893] = {
					"Землетряс Агган", -- [1]
					"", -- [2]
				},
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[137405] = {
					"Цепкий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135474] = {
					"Ведьма-послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
					"", -- [2]
				},
				[131402] = {
					"Клещ из Подгнилья", -- [1]
					"Подгнилье", -- [2]
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
				[148940] = {
					"Калдорайская химера", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[146874] = {
					"Призывательница ветров Марайя", -- [1]
					"", -- [2]
				},
				[145850] = {
					"Гилнеасский сапер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[126845] = {
					"Капитан Джолли", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140990] = {
					"Костечешуйный плеватель", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[144972] = {
					"Калдорай-охотница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[148921] = {
					"Калдорайский глефомет", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[140989] = {
					"Костечешуйный червь", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135470] = {
					"Ака'али Завоевательница", -- [1]
					"Гробница королей", -- [2]
				},
				[129758] = {
					"Гренадер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[145851] = {
					"Калдорай - наездник на гиппогрифе", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[143011] = {
					"Песочный окунь", -- [1]
					"", -- [2]
				},
				[133379] = {
					"Гюрзис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[132868] = {
					"Сгусток азерита", -- [1]
					"", -- [2]
				},
				[146875] = {
					"Валимок Зловредный", -- [1]
					"", -- [2]
				},
				[132802] = {
					"Йети-крепкорог", -- [1]
					"", -- [2]
				},
				[134786] = {
					"Песчаный иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[134058] = {
					"Призывательница штормов Фэй", -- [1]
					"Святилище Штормов", -- [2]
				},
				[122086] = {
					"Сталешкур из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[140670] = {
					"Камнегривый силач", -- [1]
					"", -- [2]
				},
				[123292] = {
					"Блестопанцирный хвататель", -- [1]
					"SarasIsland", -- [2]
				},
				[138432] = {
					"Повелительница приливов Несса", -- [1]
					"", -- [2]
				},
				[146876] = {
					"Мачиту Жестокий", -- [1]
					"", -- [2]
				},
				[132803] = {
					"Камнегривый вендиго", -- [1]
					"", -- [2]
				},
				[126919] = {
					"Призывательница шторма из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[140356] = {
					"Яркая Чешуйка", -- [1]
					"", -- [2]
				},
				[145402] = {
					"Одичавшая безумица", -- [1]
					"", -- [2]
				},
				[131847] = {
					"Гуляка из дома Уэйкрестов", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[137375] = {
					"Экзоскелет озаренных", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[138625] = {
					"Аматет-каратель", -- [1]
					"", -- [2]
				},
				[130437] = {
					"Кобольд-рудокоп", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140443] = {
					"Агрессивный мускусный як", -- [1]
					"", -- [2]
				},
				[139457] = {
					"Каменный цийлинь", -- [1]
					"", -- [2]
				},
				[136990] = {
					"Анкали Проклятая", -- [1]
					"", -- [2]
				},
				[146890] = {
					"Руномант из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[139010] = {
					"Свирепый острокоготь", -- [1]
					"", -- [2]
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
				[140152] = {
					"Гнилокоготь-терзатель", -- [1]
					"", -- [2]
				},
				[134686] = {
					"Взрослый кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139459] = {
					"Каменный солдат", -- [1]
					"", -- [2]
				},
				[131527] = {
					"Лорд Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[128651] = {
					"Хадал Черная Бездна", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145064] = {
					"Огонек", -- [1]
					"", -- [2]
				},
				[146889] = {
					"Вестник смерти из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[139014] = {
					"Дикий лунный искатель", -- [1]
					"", -- [2]
				},
				[140995] = {
					"Руинный охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[135365] = {
					"Матрона Альма", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[122088] = {
					"Тихоступ из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[146112] = {
					"Чернильная Шкура", -- [1]
					"", -- [2]
				},
				[135050] = {
					"Жуткий капитан Вандегрим", -- [1]
					"Вольная Гавань", -- [2]
				},
				[135562] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[146880] = {
					"Голвран Загадочный", -- [1]
					"", -- [2]
				},
				[132807] = {
					"Цийлинь клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[139015] = {
					"Дикий лунный совух", -- [1]
					"", -- [2]
				},
				[122984] = {
					"Дазар'айский колосс", -- [1]
					"Атал'Дазар", -- [2]
				},
				[146832] = {
					"Некромант-послушник", -- [1]
					"", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[140294] = {
					"Волк-снегошкур", -- [1]
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
				[134157] = {
					"Тенеликий воин", -- [1]
					"Гробница королей", -- [2]
				},
				[138438] = {
					"Разрыватель волн Сталеклык", -- [1]
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
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[130661] = {
					"Геомант Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[122263] = {
					"Твердопанцирный хрустогрыз", -- [1]
					"", -- [2]
				},
				[129227] = {
					"Азерокк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139462] = {
					"Каменный глиночет", -- [1]
					"", -- [2]
				},
				[140678] = {
					"Снегобородый ревун", -- [1]
					"", -- [2]
				},
				[133870] = {
					"Больной плеточник", -- [1]
					"Подгнилье", -- [2]
				},
				[137625] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138443] = {
					"Чешуестраж Булет", -- [1]
					"", -- [2]
				},
				[140106] = {
					"Смертежал - страж кладки", -- [1]
					"", -- [2]
				},
				[146884] = {
					"Воевода Хьельскард", -- [1]
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
				[138628] = {
					"Аматет-жрец", -- [1]
					"", -- [2]
				},
				[136592] = {
					"Флинн Фэйрвинд", -- [1]
					"", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134423] = {
					"Обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[132864] = {
					"Молодой крепкорук", -- [1]
					"", -- [2]
				},
				[139464] = {
					"Ревун клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[122963] = {
					"Резан", -- [1]
					"Атал'Дазар", -- [2]
				},
				[133835] = {
					"Дикий кровавый роевик", -- [1]
					"Подгнилье", -- [2]
				},
				[135764] = {
					"Взрывной тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[138441] = {
					"Глубинная певунья", -- [1]
					"", -- [2]
				},
				[144071] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133836] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[134912] = {
					"Лиловый ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[126185] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[146118] = {
					"Агрессивный иглоспин", -- [1]
					"", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138511] = {
					"Лазурокрыл", -- [1]
					"", -- [2]
				},
				[144839] = {
					"Белохвостая олениха", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136976] = {
					"Т'зала", -- [1]
					"Гробница королей", -- [2]
				},
				[122986] = {
					"Дикий небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139466] = {
					"Кобальтовый камнестраж", -- [1]
					"", -- [2]
				},
				[144837] = {
					"Олень c Темных берегов", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
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
				[136207] = {
					"Стромгардская защитница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[130024] = {
					"Мокрая корабельная крыса", -- [1]
					"Вольная Гавань", -- [2]
				},
				[130319] = {
					"Гоплит из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[126093] = {
					"Саурок из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[139400] = {
					"Речной заклинатель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[136391] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138444] = {
					"Генерал Веспарак", -- [1]
					"", -- [2]
				},
				[133389] = {
					"Гальваззт", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134914] = {
					"Подвальный паук", -- [1]
					"", -- [2]
				},
				[146881] = {
					"Ведун Бринвульф", -- [1]
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
				[139460] = {
					"Каменный ткач земли", -- [1]
					"", -- [2]
				},
				[146833] = {
					"Некромантка-заклинательница", -- [1]
					"", -- [2]
				},
				[130404] = {
					"Крысолов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[144842] = {
					"Прибрежный краб", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[136839] = {
					"Мроган", -- [1]
					"", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[139011] = {
					"Дикий защитник", -- [1]
					"", -- [2]
				},
				[134791] = {
					"Сияющий ползун", -- [1]
					"", -- [2]
				},
				[136330] = {
					"Шипы души", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[128967] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138446] = {
					"Призывательница пучин Зелисса", -- [1]
					"", -- [2]
				},
				[122605] = {
					"Окаменевший враг", -- [1]
					"", -- [2]
				},
				[98035] = {
					"Зловещий охотник", -- [1]
					"Сверкающие копи", -- [2]
				},
				[138819] = {
					"Мародер из дружины Кровавого Киля", -- [1]
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
				[126423] = {
					"Коралловый краб", -- [1]
					"", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[138447] = {
					"Воительница Салария", -- [1]
					"", -- [2]
				},
				[134788] = {
					"Иглохват-твердопанцирник", -- [1]
					"SarasIsland", -- [2]
				},
				[139807] = {
					"Геодезист Торговой компании", -- [1]
					"", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[131486] = {
					"Верховный экзарх Туралион", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140991] = {
					"Мозгоплет", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134338] = {
					"Жрец моря - каратель", -- [1]
					"Святилище Штормов", -- [2]
				},
				[132051] = {
					"Кровавый клещ", -- [1]
					"Подгнилье", -- [2]
				},
				[127048] = {
					"Землекоп из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[146892] = {
					"Мародер из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[132819] = {
					"Волчонок-рыжешкур", -- [1]
					"", -- [2]
				},
				[138493] = {
					"Прислужник Зула", -- [1]
					"Гробница королей", -- [2]
				},
				[136190] = {
					"Темный разлом", -- [1]
					"SarasIsland", -- [2]
				},
				[138830] = {
					"Троваст Ведомый Звездами", -- [1]
					"", -- [2]
				},
				[132481] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[144776] = {
					"Айрин Быстроногая", -- [1]
					"", -- [2]
				},
				[140679] = {
					"Снегобородый вендиго", -- [1]
					"", -- [2]
				},
				[146893] = {
					"Мистик из клана Гнилой Плоти", -- [1]
					"", -- [2]
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
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[140430] = {
					"Скальный козлик", -- [1]
					"SarasIsland", -- [2]
				},
				[134787] = {
					"Краб-иглохват", -- [1]
					"SarasIsland", -- [2]
				},
				[134612] = {
					"Цепкие щупальца", -- [1]
					"Святилище Штормов", -- [2]
				},
				[135834] = {
					"Пагубное облако", -- [1]
					"", -- [2]
				},
				[118175] = {
					"Элементаль бури", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139474] = {
					"Цор-Синь Оракул Земли", -- [1]
					"", -- [2]
				},
				[144772] = {
					"Леди Тамакин", -- [1]
					"", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[147965] = {
					"Нестабильный азерит", -- [1]
					"", -- [2]
				},
				[134139] = {
					"Храмовник из Святилища Штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[146895] = {
					"Вандал из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[126291] = {
					"Пехотинец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[143985] = {
					"Поглощатор", -- [1]
					"Сверкающие копи", -- [2]
				},
				[126190] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[137940] = {
					"Сторожевая акула", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136889] = {
					"Шипастый колдун Так", -- [1]
					"", -- [2]
				},
				[136250] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[131858] = {
					"Шипастый страж", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[128649] = {
					"Сержант Бейнбридж", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139659] = {
					"Оракул из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[139476] = {
					"Каменное чудище", -- [1]
					"", -- [2]
				},
				[139431] = {
					"Хранитель склепа", -- [1]
					"", -- [2]
				},
				[132530] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129517] = {
					"Оживленный ящер", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139339] = {
					"Защитник из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[138255] = {
					"Наводчик корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136044] = {
					"Ядозыбь", -- [1]
					"", -- [2]
				},
				[133663] = {
					"Фанатичный охотник за головами", -- [1]
					"Подгнилье", -- [2]
				},
				[144160] = {
					"Головорез Краснокрюк", -- [1]
					"Осада Боралуса", -- [2]
				},
				[131545] = {
					"Леди Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[135895] = {
					"Ослепительная искра", -- [1]
					"SarasIsland", -- [2]
				},
				[135263] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136802] = {
					"Углекус", -- [1]
					"", -- [2]
				},
				[134616] = {
					"Подрастающий кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[137395] = {
					"Опытный пехотинец", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[135322] = {
					"Золотой Змей", -- [1]
					"Гробница королей", -- [2]
				},
				[122076] = {
					"Снежная сфера", -- [1]
					"", -- [2]
				},
				[133593] = {
					"Техник-эксперт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139680] = {
					"Ловец из темных глубин", -- [1]
					"SarasIsland", -- [2]
				},
				[138659] = {
					"Оживленная гончая", -- [1]
					"", -- [2]
				},
				[136353] = {
					"Огромное щупальце", -- [1]
					"Святилище Штормов", -- [2]
				},
				[134617] = {
					"Детеныш кролуска", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[122973] = {
					"Дазар'айский духовник", -- [1]
					"Атал'Дазар", -- [2]
				},
				[140975] = {
					"Младозоб", -- [1]
					"", -- [2]
				},
				[139697] = {
					"Верховный шаман Клаксикар", -- [1]
					"SarasIsland", -- [2]
				},
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129208] = {
					"Жуткий капитан Локвуд", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140076] = {
					"Крепкорук-вожак", -- [1]
					"", -- [2]
				},
				[141283] = {
					"Кул-тирасский стражник", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138968] = {
					"Стальной зев клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[131246] = {
					"Аланаа", -- [1]
					"", -- [2]
				},
				[139480] = {
					"Каменный защитник", -- [1]
					"", -- [2]
				},
				[131383] = {
					"Заклинатель спор Занча", -- [1]
					"Подгнилье", -- [2]
				},
				[138992] = {
					"Пачкун из племени Грязного Плавника", -- [1]
					"SarasIsland", -- [2]
				},
				[138281] = {
					"Безликий осквернитель", -- [1]
					"Подгнилье", -- [2]
				},
				[138481] = {
					"Хромит", -- [1]
					"SarasIsland", -- [2]
				},
				[140760] = {
					"Земляной великан", -- [1]
					"", -- [2]
				},
				[138969] = {
					"Дух могу из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[128969] = {
					"Командир из корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[124582] = {
					"Ущельник", -- [1]
					"", -- [2]
				},
				[140850] = {
					"Шаловливый землевик", -- [1]
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
				[139539] = {
					"Тавок, Молот Императрицы", -- [1]
					"", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[139672] = {
					"Бармашлеп", -- [1]
					"SarasIsland", -- [2]
				},
				[148584] = {
					"Верховный маг Мордент Вечерняя Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138643] = {
					"Квалдир-берсерк", -- [1]
					"", -- [2]
				},
				[138572] = {
					"Генерал Увош", -- [1]
					"", -- [2]
				},
				[140250] = {
					"Елень", -- [1]
					"", -- [2]
				},
				[140357] = {
					"Ядовитый разоритель", -- [1]
					"", -- [2]
				},
				[138996] = {
					"Говорящий с землей Джува", -- [1]
					"", -- [2]
				},
				[138971] = {
					"Змей клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[138469] = {
					"Обсидиановый чешуйчатый губитель", -- [1]
					"", -- [2]
				},
				[134895] = {
					"Железнопут-прядильщик", -- [1]
					"", -- [2]
				},
				[139351] = {
					"Глашатай теней Анголо", -- [1]
					"SarasIsland", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
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
						["race"] = {
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
						["role"] = {
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
						["race"] = {
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
						["role"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [16]
			},
			["last_news_time"] = 1543749097,
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
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["aura_alpha"] = 0.799999952316284,
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
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
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateGlobalScale"] = "1.0",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.10000000149012",
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
				["nameplateSelfTopInset"] = "0.79",
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
				[204598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Зевра",
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
				[115151] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лучинапаса",
					["npcID"] = 0,
				},
				[208052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[280558] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиккуратный",
					["npcID"] = 0,
				},
				[45524] = {
					["encounterID"] = 2115,
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280817] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Celîna-Taerar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273657] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Амерсфорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273658] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207289] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Ксарантаур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зачемта",
					["npcID"] = 0,
				},
				[228645] = {
					["source"] = "Руническое оружие",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27893,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264456] = {
					["source"] = "Обезумевший стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[264712] = {
					["encounterID"] = 2115,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тонкс",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[289523] = {
					["source"] = "Чудомое",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289524] = {
					["source"] = "Добраякукла",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азирочка",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244636] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азирочка",
					["npcID"] = 0,
				},
				[267537] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Севс",
					["npcID"] = 0,
				},
				[248473] = {
					["type"] = "BUFF",
					["source"] = "Кинаэгрин-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Джаджу",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268306] = {
					["type"] = "BUFF",
					["source"] = "Леди Уэйкрест",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[263959] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[264471] = {
					["encounterID"] = 2113,
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[263961] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[42650] = {
					["type"] = "BUFF",
					["source"] = "Boogîeman-Stormscale",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[203720] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266266] = {
					["encounterID"] = 2117,
					["source"] = "Горак Тул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[261264] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[198222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Неизвестно",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жыдкий",
					["npcID"] = 0,
				},
				[291587] = {
					["type"] = "BUFF",
					["source"] = "Спящая маска вуду",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 150412,
				},
				[73920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэфалеан",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[265759] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[247456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[265760] = {
					["source"] = "Матрона Бриндл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[292359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Какойбольшой",
					["npcID"] = 0,
				},
				[198097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зачемта",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Корделлия",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278551] = {
					["source"] = "Заклинательница шипов из ковена",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131666,
				},
				[30213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ривинкилиг",
					["npcID"] = 17252,
				},
				[295431] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[292364] = {
					["source"] = "Амерсфорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Азирочка",
					["npcID"] = 0,
				},
				[294155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хазармэйт",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жкизор",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123986] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кирамонк",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268072] = {
					["type"] = "BUFF",
					["source"] = "Отступник - песчаный разведчик",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122745,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[212552] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кава",
					["npcID"] = 0,
				},
				[273956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сетрак-страж",
					["npcID"] = 123775,
				},
				[63560] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джекгангрена",
					["npcID"] = 0,
				},
				[191837] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фисту-Галакронд",
					["npcID"] = 0,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жмуподпрок",
					["npcID"] = 0,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зловещий охотник",
					["npcID"] = 98035,
				},
				[285979] = {
					["source"] = "Виридавикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50613] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Скорпионыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260508] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[195292] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267824] = {
					["source"] = "Субстанция души",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135240,
				},
				[268080] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ивоннэль",
					["npcID"] = 0,
				},
				[266035] = {
					["source"] = "Ведьма-послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135474,
				},
				[294935] = {
					["source"] = "Ксарантаур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206930] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сёпа",
					["npcID"] = 0,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[268086] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Кайблис",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Чудомое",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260512] = {
					["type"] = "BUFF",
					["source"] = "Оживленный голиаф",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[197214] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[55090] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Сагалла",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264510] = {
					["source"] = "Обезумевший стрелок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[2580] = {
					["source"] = "Нэриэлл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азирочка",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108199] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266047] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273465] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[196834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[273977] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268607] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[260900] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[276025] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Тощак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Масичка",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[264520] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[1330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ксорел",
					["npcID"] = 0,
				},
				[264777] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ледидива",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Кррэш",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270404] = {
					["source"] = "Увядший плеточник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130348,
				},
				[204255] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Рэйенбоудэш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264525] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[273988] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271175] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[204513] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[271178] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[273992] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[256816] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[61295] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Корролевна",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ниреида",
					["npcID"] = 0,
				},
				[262232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Амфетоминыч-СвежевательДуш",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197995] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дэфалеан",
					["npcID"] = 0,
				},
				[256434] = {
					["type"] = "BUFF",
					["source"] = "Гримлл-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Меосаб-Гордунни",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264024] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[61999] = {
					["encounterID"] = 2115,
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264027] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131812,
				},
				[703] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меосаб-Гордунни",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Амерсфорд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268122] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[267611] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Скорпионыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[268125] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Кетирия",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Севс",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Муго",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Ксарантаур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278359] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Протогенес",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264040] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Кайблис",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32615] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Безрассудная вульпера",
					["npcID"] = 130474,
				},
				[280412] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264556] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[268904] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280413] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фисту-Галакронд",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Hypaspist-Draenor",
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
				[264050] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[274281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[122278] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260541] = {
					["type"] = "BUFF",
					["source"] = "Оживленный голиаф",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[116844] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204021] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273006] = {
					["type"] = "DEBUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260926] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[115310] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261438] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[265337] = {
					["source"] = "Запачканный кровью поросенок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135048,
				},
				[261439] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[195072] = {
					["source"] = "Лико",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255941] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261440] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ниреида",
					["npcID"] = 0,
				},
				[270711] = {
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фисту-Галакронд",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Шконарь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Жмуподпрок",
					["npcID"] = 0,
				},
				[281711] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[256455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фурока-Галакронд",
					["npcID"] = 0,
				},
				[119085] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Трилимилипро",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Тощак",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278134] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["type"] = "BUFF",
					["source"] = "Кардилия-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[260805] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[295527] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Протогенес",
					["npcID"] = 0,
				},
				[217200] = {
					["type"] = "DEBUFF",
					["source"] = "Мотохант-Разувий",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267907] = {
					["encounterID"] = 2114,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джекгангрена",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ледидива",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Виридавикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265352] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кентуки",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Дваргос",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[272260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[281724] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меосаб-Гордунни",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265364] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[6552] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273294] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Hypaspist-Draenor",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Hypaspist-Draenor",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Асахи-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265368] = {
					["source"] = "Заколдованный капитан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131587,
				},
				[265880] = {
					["source"] = "Матрона Альма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[265881] = {
					["source"] = "Матрона Альма",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[288388] = {
					["source"] = "Восставшая душа",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[288644] = {
					["type"] = "DEBUFF",
					["source"] = "Sisiphus-Draenor",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265371] = {
					["source"] = "Заколдованный капитан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131587,
				},
				[49028] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жыдкий",
					["npcID"] = 0,
				},
				[265372] = {
					["source"] = "Порабощенная стражница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131585,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Инсония",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Sisiphus-Draenor",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Зевра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Серебаныч",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Сильваас",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[280210] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Эрънест-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Тонкс",
					["npcID"] = 0,
				},
				[267171] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Муго",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Герои",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[289423] = {
					["source"] = "Муго",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115450] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264105] = {
					["source"] = "Меченая сестра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131818,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ивоннэль",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Кентуки",
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
				[265642] = {
					["source"] = "Зараженный мастиф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135234,
				},
				[186401] = {
					["source"] = "Виридавикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281413] = {
					["type"] = "BUFF",
					["source"] = "Грэхам-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278431] = {
					["source"] = "Прожорливая личинка",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142587,
				},
				[260697] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Саняруберойд-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264110] = {
					["source"] = "Меченая сестра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131818,
				},
				[29722] = {
					["source"] = "Асахи-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Смертникрито-Галакронд",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жмуподпрок",
					["npcID"] = 0,
				},
				[260698] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[51460] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Антум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265391] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[202004] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[112042] = {
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[260699] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[203539] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147732] = {
					["type"] = "DEBUFF",
					["source"] = "Asaakiraa-Blackmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[207685] = {
					["type"] = "DEBUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202140] = {
					["source"] = "Зёбедам",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260700] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[260291] = {
					["type"] = "DEBUFF",
					["source"] = "Изгнанный ликтор",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138915,
				},
				[276136] = {
					["type"] = "BUFF",
					["source"] = "Владлеенн-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Падиктор-Азурегос",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264038] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ривинкилиг",
					["npcID"] = 17252,
				},
				[55233] = {
					["source"] = "Василец",
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
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Протогенес",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Асахи-СвежевательДуш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[210191] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Celîna-Taerar",
					["encounterID"] = 2117,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Варос",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Вейшинь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ривинкилиг",
					["npcID"] = 17252,
				},
				[197916] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мемерлинд",
					["npcID"] = 0,
				},
				[8921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[197277] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Инк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278444] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[264378] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[236645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[268088] = {
					["type"] = "BUFF",
					["source"] = "Сестра Маладия",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[204213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Зуйва",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288548] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[143625] = {
					["source"] = "Скорпионыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[198813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фисту-Галакронд",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гуин",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288653] = {
					["type"] = "DEBUFF",
					["source"] = "Sisiphus-Draenor",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Кайблис",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264693] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[197919] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жмуподпрок",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272668] = {
					["type"] = "BUFF",
					["source"] = "Пылающая душа",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136436,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Инсония",
					["npcID"] = 0,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[265407] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[197051] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[33702] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[288426] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Страж Скверны",
					["npcID"] = 17252,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[264384] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[48265] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[265410] = {
					["source"] = "Гуляка из дома Уэйкрестов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131847,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[266225] = {
					["encounterID"] = 2117,
					["source"] = "Горак Тул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[184367] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5246] = {
					["encounterID"] = 2113,
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Корролевна",
					["npcID"] = 0,
				},
				[265412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[285500] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дэстрэр",
					["npcID"] = 0,
				},
				[278456] = {
					["source"] = "Прожорливая личинка",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[247454] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ашкаэл-Термоштепсель",
					["npcID"] = 0,
				},
				[266181] = {
					["encounterID"] = 2117,
					["source"] = "Горак Тул",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дух зверя",
					["npcID"] = 38453,
				},
				[109128] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[62812] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джекгангрена",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Ксарантаур",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Эрънест-ЧерныйШрам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260569] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["source"] = "Чародей войска мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[275391] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[240447] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265761] = {
					["source"] = "Матрона Бриндл",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[268998] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[272276] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[254224] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[184364] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264140] = {
					["source"] = "Шипастая гончая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131669,
				},
				[268953] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257260] = {
					["source"] = "Шипастый страж",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[24858] = {
					["source"] = "Повелье",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278463] = {
					["source"] = "Обезумевший мастер выживания",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[199373] = {
					["source"] = "Войско мертвых",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 24207,
				},
				[296142] = {
					["source"] = "Заблудшая душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148894,
				},
				[208796] = {
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268234] = {
					["encounterID"] = 2115,
					["source"] = "Желчный слизнюченыш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136541,
				},
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиккуратный",
					["npcID"] = 0,
				},
				[256111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Заклинательница клыков Сарка",
					["npcID"] = 130466,
				},
				[286393] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264655] = {
					["source"] = "Зараженный крестьянин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134041,
				},
				[240443] = {
					["source"] = "Субстанция души",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135240,
				},
				[73325] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кава",
					["npcID"] = 0,
				},
				[281791] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тонкс",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Муго",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261266] = {
					["type"] = "BUFF",
					["source"] = "Сестра Маладия",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 33776,
				},
				[102417] = {
					["source"] = "Самбава",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278468] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268494] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Зёбедам",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[63619] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Порождение Света",
					["npcID"] = 128140,
				},
				[271880] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Безрассудная вульпера",
					["npcID"] = 130474,
				},
				[281795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тонкс",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Тощак",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288693] = {
					["source"] = "Замученная душа",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148893,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Безрассудная вульпера",
					["npcID"] = 130474,
				},
				[280773] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292362] = {
					["source"] = "Ордокан",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зиккуратный",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Скорпионыч",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Жыдкий",
					["npcID"] = 0,
				},
				[204197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Инсириа",
					["npcID"] = 0,
				},
				[115078] = {
					["encounterID"] = 2115,
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278474] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[164812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мутаборец",
					["npcID"] = 0,
				},
				[266198] = {
					["encounterID"] = 2117,
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[213405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фисту-Галакронд",
					["npcID"] = 0,
				},
				[264153] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[192225] = {
					["source"] = "Вейшинь",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[265741] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Асахи-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Янедеградант",
					["npcID"] = 0,
				},
				[263899] = {
					["source"] = "Прядильщица лоз из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131670,
				},
				[81256] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Варзуз",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264923] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2113,
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243435] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Ниманс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Герои",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Мутаборец",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Sisiphus-Draenor",
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
				[278736] = {
					["source"] = "Антум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261265] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[273653] = {
					["source"] = "Сумрачный ужас",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[265882] = {
					["source"] = "Матрона Альма",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135365,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Курахеши",
					["npcID"] = 0,
				},
				[125439] = {
					["encounterID"] = 2113,
					["source"] = "Boogîeman-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кава",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["source"] = "Celîna-Taerar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263905] = {
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131677,
				},
				[261446] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[215711] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Нэкрономикан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хотвагон",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Василец",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[122] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[260852] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[264931] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[269279] = {
					["source"] = "Hypaspist-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Смертникрито-Галакронд",
					["npcID"] = 0,
				},
				[260741] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меосаб-Гордунни",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116680] = {
					["source"] = "Celîna-Taerar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[261612] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сетрак-страж",
					["npcID"] = 123775,
				},
				[261447] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[275931] = {
					["source"] = "Boogîeman-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[260551] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[203814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Софея",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260907] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[271329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Безрассудная вульпера",
					["npcID"] = 130474,
				},
				[290372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Виконтвар",
					["npcID"] = 0,
				},
				[278567] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131812,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Егермейстерх",
					["npcID"] = 0,
				},
				[289349] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264150] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[271842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Безрассудная вульпера",
					["npcID"] = 130474,
				},
				[260703] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[271590] = {
					["type"] = "BUFF",
					["source"] = "Леди Уэйкрест",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[34428] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266258] = {
					["encounterID"] = 2117,
					["source"] = "Портал друстов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133435,
				},
				[85288] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Sisiphus-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255741] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сетрак-агрессор",
					["npcID"] = 123774,
				},
				[258945] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сетрак-страж",
					["npcID"] = 123775,
				},
				[124682] = {
					["source"] = "Celîna-Taerar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Кентуки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["source"] = "Василец",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[288981] = {
					["source"] = "Виридавикс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260923] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[271174] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[21562] = {
					["source"] = "Фольхе",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крошкафикси",
					["npcID"] = 0,
				},
				[60233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Володарк-СвежевательДуш",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Герои",
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
				[203782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Зуйва",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Варос",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шрэккер",
					["npcID"] = 0,
				},
				[268077] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[290264] = {
					["source"] = "Антум",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Гдемуму",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дёмын",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Арфуразор",
					["npcID"] = 0,
				},
				[268271] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Сетрак-опустошитель",
					["npcID"] = 123773,
				},
				[287916] = {
					["source"] = "Инк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258889] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сетрак - призывательница небес",
					["npcID"] = 123776,
				},
				[49998] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275689] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Чупань-Галакронд",
					["npcID"] = 0,
				},
				[257408] = {
					["source"] = "Инк",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Hypaspist-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[270831] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ядовитая песчаная оса",
					["npcID"] = 122678,
				},
				[198149] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Элементаль воды",
					["npcID"] = 78116,
				},
				[264694] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[259455] = {
					["source"] = "Нэриэлл",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257537] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хотстрик",
					["npcID"] = 0,
				},
				[5211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Мутнобык-Гордунни",
					["npcID"] = 0,
				},
				[276204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиккуратный",
					["npcID"] = 0,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Джулани-Гордунни",
					["npcID"] = 0,
				},
				[270686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Дюнная вошь",
					["npcID"] = 124029,
				},
				[85739] = {
					["source"] = "Sisiphus-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зиккуратный",
					["npcID"] = 0,
				},
				[204157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[204490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зёбедам",
					["npcID"] = 0,
				},
				[270594] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Увядший побег",
					["npcID"] = 130349,
				},
			},
			["indicator_enemyclass"] = true,
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
				["Aura - Buff Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit - Important"] = 5,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit Power"] = 1,
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
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1535473591,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
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
					["ScriptType"] = 3,
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1528748982,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1537397927,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["ScriptType"] = 1,
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
					["ScriptType"] = 1,
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1533663248,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1535417117,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
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
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Time"] = 1534625053,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["ScriptType"] = 1,
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
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
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1534625053,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["ScriptType"] = 1,
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
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1535048199,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["ScriptType"] = 2,
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
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
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
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1535048441,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["ScriptType"] = 2,
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
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1535815768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
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
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1543250950,
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["ScriptType"] = 3,
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
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Time"] = 1542816185,
					["PlaterCore"] = 1,
					["Name"] = "Blink by Time Left [Plater]",
					["ScriptType"] = 1,
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
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1543253273,
					["PlaterCore"] = 1,
					["Name"] = "Color Change [Plater]",
					["ScriptType"] = 3,
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
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Border Color [Plater]",
					["ScriptType"] = 1,
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
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1547991413,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["ScriptType"] = 1,
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
				["Attacking Specific Unit"] = 1,
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Aura Reorder"] = 1,
				["Blockade Encounter"] = 1,
				["Targetting Alpha"] = 3,
				["Players Targetting Amount"] = 4,
				["Hide Neutral Units"] = 1,
				["Combo Points"] = 3,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
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
				[145402] = {
					"Одичавшая безумица", -- [1]
					"", -- [2]
				},
				[129208] = {
					"Жуткий капитан Локвуд", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146840] = {
					"Скелет-страж", -- [1]
					"", -- [2]
				},
				[138369] = {
					"Футбомбная хулиганка", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[139353] = {
					"Неживой герой", -- [1]
					"SarasIsland", -- [2]
				},
				[141284] = {
					"Кул-тирасская смотрительница приливов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[134939] = {
					"Щетинистый людоед", -- [1]
					"SarasIsland", -- [2]
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
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136883] = {
					"Заклинатель шипов из племени Острогривов", -- [1]
					"", -- [2]
				},
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[142336] = {
					"Осьминожек", -- [1]
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
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[134940] = {
					"Щетинистый пронзатель", -- [1]
					"SarasIsland", -- [2]
				},
				[129369] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140355] = {
					"Яркочешуйчатый крикун", -- [1]
					"", -- [2]
				},
				[141566] = {
					"Кишкодерка из банды Резчиков", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140982] = {
					"Ледолом", -- [1]
					"SarasIsland", -- [2]
				},
				[132530] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[146845] = {
					"Рваный Джаред", -- [1]
					"", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[132713] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136470] = {
					"Продавщица закусок", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[141565] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[145305] = {
					"Дикий громила", -- [1]
					"", -- [2]
				},
				[128652] = {
					"Вик'Гот", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134232] = {
					"Наемный убийца", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[129827] = {
					"Океанский крошитель", -- [1]
					"SarasIsland", -- [2]
				},
				[139357] = {
					"Шаркун из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[129370] = {
					"Заклинатель моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[130488] = {
					"Механожокей", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[136483] = {
					"Матрос корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[137058] = {
					"Проклинательница Магода", -- [1]
					"", -- [2]
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
				[135245] = {
					"Крушитель из братства Трюмных Крыс", -- [1]
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
				[131311] = {
					"Бушующий азерит", -- [1]
					"SarasIsland", -- [2]
				},
				[138848] = {
					"Танцующий с клинками Зорлак", -- [1]
					"SarasIsland", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
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
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
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
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138466] = {
					"Обсидиановый дракончик", -- [1]
					"SarasIsland", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[139701] = {
					"Низший океанский оракул", -- [1]
					"SarasIsland", -- [2]
				},
				[145067] = {
					"Тенеперый вороненок", -- [1]
					"", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
					"", -- [2]
				},
				[129372] = {
					"Метатель черной смолы", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140447] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[138467] = {
					"Обсидиановый драконор", -- [1]
					"SarasIsland", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
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
				[137517] = {
					"Разрушитель из дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136934] = {
					"Испытатель экспериментального оружия", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146849] = {
					"Владычица духов Ровена", -- [1]
					"", -- [2]
				},
				[129828] = {
					"Океанский щелкун", -- [1]
					"SarasIsland", -- [2]
				},
				[138468] = {
					"Обсидиановый заклинатель пламени", -- [1]
					"SarasIsland", -- [2]
				},
				[140441] = {
					"Молодой мускусный як", -- [1]
					"", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[141939] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140768] = {
					"Гууру Разбиватель Гор", -- [1]
					"", -- [2]
				},
				[135763] = {
					"Порождение Бездны", -- [1]
					"", -- [2]
				},
				[141938] = {
					"Снайпер дома Эшвейнов", -- [1]
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
				[130640] = {
					"Злобнокус-хвататель", -- [1]
					"", -- [2]
				},
				[145304] = {
					"Дикий душитель", -- [1]
					"", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[149344] = {
					"Одержимый яростью азерит", -- [1]
					"", -- [2]
				},
				[139097] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[133379] = {
					"Гюрзис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138470] = {
					"Обсидиановый дракон", -- [1]
					"", -- [2]
				},
				[124583] = {
					"Гранатовый червь", -- [1]
					"SarasIsland", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[123146] = {
					"Истерзанный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[137716] = {
					"Донный краб", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[140979] = {
					"Длиннозуб", -- [1]
					"", -- [2]
				},
				[137029] = {
					"Артиллерист", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[147225] = {
					"Экстрактор азерита", -- [1]
					"SarasIsland", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[130485] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[141282] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140609] = {
					"Жестокий мако", -- [1]
					"SarasIsland", -- [2]
				},
				[130620] = {
					"Ледобоец Сераф", -- [1]
					"", -- [2]
				},
				[136643] = {
					"Экстрактор азерита", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134012] = {
					"Надсмотрщик Аскари", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129227] = {
					"Азерокк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[149331] = {
					"Сияющий азерит", -- [1]
					"", -- [2]
				},
				[132532] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134990] = {
					"Заряженная песчаная дьяволица", -- [1]
					"Храм Сетралисс", -- [2]
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["captured_spells"] = {
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[263275] = {
					["type"] = "BUFF",
					["source"] = "Надсмотрщик Аскари",
					["npcID"] = 134012,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[271579] = {
					["npcID"] = 130661,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Геомант Торговой компании",
					["encounterID"] = 2105,
				},
				[268130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Продавщица закусок",
					["npcID"] = 136470,
				},
				[263276] = {
					["type"] = "DEBUFF",
					["source"] = "Надсмотрщик Аскари",
					["npcID"] = 134012,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[139176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вазгард",
					["npcID"] = 0,
				},
				[155145] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[262383] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Боевая машина Торговой компании",
					["npcID"] = 133463,
				},
				[115834] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[633] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[289467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[279503] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[267367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Механомиротворец",
					["npcID"] = 130485,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вазгард",
					["npcID"] = 0,
				},
				[255941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[254472] = {
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[219788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[262515] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Огнелетчица Торговой компании",
					["npcID"] = 133436,
				},
				[260669] = {
					["npcID"] = 129231,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рикса Огневерт",
					["encounterID"] = 2107,
				},
				[124682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[1022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[260734] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[57934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[258627] = {
					["type"] = "BUFF",
					["source"] = "Земляной яростень",
					["npcID"] = 129802,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2106,
				},
				[79140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[642] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аспиринн",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Анджелинушка",
					["npcID"] = 0,
				},
				[289349] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[288839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[259140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аадмирал",
					["npcID"] = 0,
				},
				[184662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кикмэн",
					["npcID"] = 0,
				},
				[288841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[51723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[257544] = {
					["type"] = "DEBUFF",
					["source"] = "Земляной яростень",
					["npcID"] = 129802,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2106,
				},
				[262270] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Алхимик Торговой компании",
					["npcID"] = 133432,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[269298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Наемный убийца",
					["npcID"] = 134232,
				},
				[288844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Восставшая душа",
					["npcID"] = 148716,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[280413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэдэум",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буенес",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Файэрола",
					["npcID"] = 0,
				},
				[118905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тотем конденсации",
					["npcID"] = 61245,
				},
				[269302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наемный убийца",
					["npcID"] = 134232,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крейро",
					["npcID"] = 0,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мистэйрия",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Хелнуракс",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Атыничотак",
					["npcID"] = 0,
				},
				[260103] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2107,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буенес",
					["npcID"] = 0,
				},
				[289362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[268797] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алхимик Торговой компании",
					["npcID"] = 133432,
				},
				[55078] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[262794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гений Торговой компании",
					["npcID"] = 133430,
				},
				[262412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Механомиротворец",
					["npcID"] = 130485,
				},
				[262540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Техник-эксперт",
					["npcID"] = 133593,
				},
				[1833] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["encounterID"] = 2105,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белтан",
					["npcID"] = 0,
				},
				[271867] = {
					["type"] = "DEBUFF",
					["source"] = "Платный разгонятель толпы",
					["npcID"] = 129214,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[126892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мохнатыелапы-Голдринн",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[290264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Курв",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[276212] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[259533] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2107,
				},
				[191634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[256148] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[198533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Статуя Нефритовой Змеи",
					["npcID"] = 60849,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[288989] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[279153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[271105] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2107,
				},
				[271107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[260813] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[262804] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гений Торговой компании",
					["npcID"] = 133430,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[279029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[279924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[268810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Подопытная крыса",
					["npcID"] = 133963,
				},
				[262092] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Одурманенный вышибала",
					["npcID"] = 130435,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Люняшка-ПиратскаяБухта",
					["npcID"] = 0,
				},
				[117952] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["encounterID"] = 2108,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 149663,
				},
				[1856] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[220510] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Атыничотак",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Коалесценция",
					["npcID"] = 0,
				},
				[279033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[3714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ледокожая",
					["npcID"] = 0,
				},
				[53563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Лоураген",
					["npcID"] = 0,
				},
				[262554] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Техник-эксперт",
					["npcID"] = 133593,
				},
				[49028] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[263066] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ленивый лаборант",
					["npcID"] = 133345,
				},
				[272903] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[262811] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Капля-пиявка",
					["npcID"] = 133753,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[279164] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Крионий",
					["npcID"] = 0,
				},
				[262940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 133753,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каун",
					["npcID"] = 0,
				},
				[115175] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[11327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эйлшторм",
					["npcID"] = 0,
				},
				[276229] = {
					["npcID"] = 141303,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "\"БУМБОТ\"",
					["encounterID"] = 2108,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Файэрола",
					["npcID"] = 0,
				},
				[260372] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Огнелетчица Торговой компании",
					["npcID"] = 133436,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пирсак",
					["npcID"] = 0,
				},
				[263583] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надсмотрщик Аскари",
					["npcID"] = 134012,
				},
				[61882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[291944] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[268129] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Продавщица закусок",
					["npcID"] = 136470,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тош",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[186406] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вавелпоя",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Ивнинг",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263202] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Геомант Торговой компании",
					["npcID"] = 130661,
				},
				[263586] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Надсмотрщик Аскари",
					["npcID"] = 134012,
				},
				[267546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Буйный гуляка",
					["npcID"] = 144231,
				},
				[286581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[280412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кабомба",
					["npcID"] = 0,
				},
				[293946] = {
					["source"] = "Ниреида",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белтан",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Юниверсалити",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Цузам",
					["npcID"] = 0,
				},
				[408] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[191837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[269429] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Боевая машина Торговой компании",
					["npcID"] = 133463,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[2094] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холикус",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кабомба",
					["npcID"] = 0,
				},
				[59628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[259853] = {
					["type"] = "DEBUFF",
					["source"] = "Рикса Огневерт",
					["npcID"] = 129231,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2107,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[267551] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Платный разгонятель толпы",
					["npcID"] = 129214,
				},
				[259474] = {
					["npcID"] = 129231,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рикса Огневерт",
					["encounterID"] = 2107,
				},
				[202090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[160029] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[190784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["encounterID"] = 2105,
				},
				[268702] = {
					["type"] = "BUFF",
					["source"] = "Каменный яростень",
					["npcID"] = 130635,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[263209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Кобольд-рудокоп",
					["npcID"] = 130437,
				},
				[269313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бесшабашная подрывница",
					["npcID"] = 130653,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тзао",
					["npcID"] = 0,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[50842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[114018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[260811] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[291170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[81256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[182387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[3600] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Тотем оков земли",
					["npcID"] = 2630,
				},
				[116680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[2484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[257371] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[45182] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[269090] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Артиллерист",
					["npcID"] = 137029,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Райянащитует",
					["npcID"] = 0,
				},
				[286976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[280205] = {
					["source"] = "Шикки",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[263215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каменный яростень",
					["npcID"] = 130635,
				},
				[20707] = {
					["source"] = "Мэйдра",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287999] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[268709] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Геомант Торговой компании",
					["npcID"] = 130661,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Триниган",
					["npcID"] = 0,
				},
				[260189] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["npcID"] = 129232,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[55233] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[274459] = {
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бтр",
					["npcID"] = 0,
				},
				[263601] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Надсмотрщик Аскари",
					["npcID"] = 134012,
				},
				[260318] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[260190] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 129232,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[260829] = {
					["type"] = "DEBUFF",
					["source"] = "Неизвестно",
					["npcID"] = 132338,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[188035] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[8143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Кундали-Галакронд",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Механожокей",
					["npcID"] = 130488,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Сайло",
					["npcID"] = 0,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[115192] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[47528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[209858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Отдыхающий работник",
					["npcID"] = 130436,
				},
				[278296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Коалесценция",
					["npcID"] = 0,
				},
				[48792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[273947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[271526] = {
					["npcID"] = 129802,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
				},
				[269099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Боевая машина Торговой компании",
					["npcID"] = 133463,
				},
				[268836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[228318] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Отдыхающий работник",
					["npcID"] = 130436,
				},
				[259856] = {
					["npcID"] = 129231,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Рикса Огневерт",
					["encounterID"] = 2107,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[288388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Восставшая душа",
					["npcID"] = 148716,
				},
				[268815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 133963,
				},
				[115450] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[271784] = {
					["npcID"] = 138369,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Футбомбный хулиган",
					["encounterID"] = 2105,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[263262] = {
					["npcID"] = 134005,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Сланцеед",
					["encounterID"] = 2105,
				},
				[2825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[50613] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[197916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Кайзуна",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Тэдэум",
					["npcID"] = 0,
				},
				[251316] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Буббу",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ахуллия-СвежевательДуш",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[61999] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[195292] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[116844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[250870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[188592] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Холикус",
					["npcID"] = 0,
				},
				[263103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ленивый лаборант",
					["npcID"] = 133345,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Орихорн",
					["npcID"] = 0,
				},
				[48707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аспиринн",
					["npcID"] = 0,
				},
				[250871] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[292359] = {
					["source"] = "Райвуша",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257593] = {
					["npcID"] = 129227,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
				},
				[197919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шинфрост",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мантикорушка",
					["npcID"] = 0,
				},
				[269493] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["npcID"] = 129214,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[289423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[256493] = {
					["type"] = "BUFF",
					["source"] = "Азеритовая футбомба",
					["npcID"] = 129246,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[268712] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 130653,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аспиринн",
					["npcID"] = 0,
				},
				[278159] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[19750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Неизвестно",
					["npcID"] = 17252,
				},
				[193641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[228645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Руническое оружие",
					["npcID"] = 27893,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белтан",
					["npcID"] = 0,
				},
				[260838] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[292364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Имеральд",
					["npcID"] = 0,
				},
				[100780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[115313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Крейро",
					["npcID"] = 0,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Лечунамарс",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Имеральд",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Байку",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[257582] = {
					["npcID"] = 129802,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Земляной яростень",
					["encounterID"] = 2106,
				},
				[81141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fuzzywuzzul-TwistingNether",
					["npcID"] = 0,
				},
				[273974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[262347] = {
					["npcID"] = 129214,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вазгард",
					["npcID"] = 0,
				},
				[206930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[260202] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кабомба",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[268865] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Испытатель экспериментального оружия",
					["npcID"] = 136934,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[262348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ползучая мина",
					["npcID"] = 133482,
				},
				[263628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Механомиротворец",
					["npcID"] = 130485,
				},
				[5277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[250878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[273977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[196840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[31224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[281621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Механожокей",
					["npcID"] = 130488,
				},
				[25771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белтан",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гопникюра",
					["npcID"] = 0,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[251838] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Царева",
					["npcID"] = 0,
				},
				[89798] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Лорд Виктор Нефарий",
					["npcID"] = 49799,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Эшкетчум",
					["npcID"] = 0,
				},
				[263637] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Одурманенный вышибала",
					["npcID"] = 130435,
				},
				[116849] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[195181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[276025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[221562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Белтан",
					["npcID"] = 0,
				},
				[270277] = {
					["type"] = "DEBUFF",
					["source"] = "Шеф Разданк",
					["npcID"] = 129232,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[245388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каун",
					["npcID"] = 0,
				},
				[107428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[268362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бесшабашная подрывница",
					["npcID"] = 130653,
				},
				[258674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Отдыхающий работник",
					["npcID"] = 130436,
				},
				[280604] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Продавщица закусок",
					["npcID"] = 136470,
				},
				[263636] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Одурманенный вышибала",
					["npcID"] = 130435,
				},
				[294935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аспиринн",
					["npcID"] = 0,
				},
				[195182] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[101546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[77535] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каун",
					["npcID"] = 0,
				},
				[245389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[51399] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[126462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Вазгард",
					["npcID"] = 0,
				},
				[100784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[271711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[280605] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Продавщица закусок",
					["npcID"] = 136470,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[290467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Элевин",
					["npcID"] = 0,
				},
				[206931] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Большой элементаль земли",
					["npcID"] = 95072,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Имеральд",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Штрафослот",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Атыничотак",
					["npcID"] = 0,
				},
				[56222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Каун",
					["npcID"] = 0,
				},
				[703] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[1330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Блудфист",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[275907] = {
					["npcID"] = 129227,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[287916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Моха",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[225080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[257337] = {
					["npcID"] = 129214,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Платный разгонятель толпы",
					["encounterID"] = 2105,
				},
				[280602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Механожокей",
					["npcID"] = 130488,
				},
				[77505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[255996] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["encounterID"] = 2105,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кабомба",
					["npcID"] = 0,
				},
				[115310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[268846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Испытатель экспериментального оружия",
					["npcID"] = 136934,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Рикардоггерс",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[212051] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Аадмирал",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Анджелинушка",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[271903] = {
					["type"] = "BUFF",
					["source"] = "Платный разгонятель толпы",
					["npcID"] = 129214,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2105,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[183436] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[267354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наемный убийца",
					["npcID"] = 134232,
				},
				[296142] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Заблудшая душа",
					["npcID"] = 148894,
				},
				[271698] = {
					["npcID"] = 129227,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Буранн-СвежевательДуш",
					["npcID"] = 0,
				},
				[201641] = {
					["source"] = "Зёбедам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[57984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Большой элементаль огня",
					["npcID"] = 95061,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Буранн-СвежевательДуш",
					["npcID"] = 0,
				},
				[269831] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260279] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[277960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[262513] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Огнелетчица Торговой компании",
					["npcID"] = 133436,
				},
				[129597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Фаствульв",
					["npcID"] = 0,
				},
				[290608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кайаза",
					["npcID"] = 0,
				},
				[108199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Василец",
					["npcID"] = 0,
				},
				[257597] = {
					["type"] = "BUFF",
					["source"] = "Азерокк",
					["npcID"] = 129227,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2106,
				},
				[286393] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[260280] = {
					["type"] = "BUFF",
					["source"] = "Шеф Разданк",
					["npcID"] = 129232,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2108,
				},
				[288693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Замученная душа",
					["npcID"] = 148893,
				},
				[258622] = {
					["npcID"] = 129227,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Азерокк",
					["encounterID"] = 2106,
				},
				[262377] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ползучая мина",
					["npcID"] = 133482,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Froziro-TarrenMill",
					["npcID"] = 0,
				},
				[271456] = {
					["npcID"] = 129232,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шеф Разданк",
					["encounterID"] = 2108,
				},
				[268893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Свелога",
					["npcID"] = 0,
				},
				[210714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Бтр",
					["npcID"] = 0,
				},
				[198067] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Шемая",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Вазгард",
					["npcID"] = 0,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sneakylynx-Kazzak",
					["npcID"] = 0,
				},
				[262268] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Алхимик Торговой компании",
					["npcID"] = 133432,
				},
				[264689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Дранкенштейн",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Царева",
					["npcID"] = 0,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Атыничотак",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Цузам",
					["npcID"] = 0,
				},
			},
			["health_statusbar_texture"] = "PlaterTexture",
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
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
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateOtherTopInset"] = "0.085",
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
			["indicator_enemyclass"] = true,
			["auto_toggle_friendly"] = {
				["cities"] = false,
				["world"] = false,
			},
		},
		["MainProfile"] = {
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
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
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
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
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
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
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
				[136044] = {
					"Ядозыбь", -- [1]
					"", -- [2]
				},
				[140850] = {
					"Шаловливый землевик", -- [1]
					"", -- [2]
				},
				[129371] = {
					"Мастер клинков прилива", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134139] = {
					"Храмовник из Святилища Штормов", -- [1]
					"Святилище Штормов", -- [2]
				},
				[133666] = {
					"Отвлекатор Головокружилки", -- [1]
					"", -- [2]
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
				[122076] = {
					"Снежная сфера", -- [1]
					"", -- [2]
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
				[127497] = {
					"Стражник корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
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
				[143985] = {
					"Поглощатор", -- [1]
					"Сверкающие копи", -- [2]
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
				[131850] = {
					"Обезумевший мастер выживания", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[145026] = {
					"Проворный падальщик", -- [1]
					"", -- [2]
				},
				[138890] = {
					"Даргульф Искатель Духов", -- [1]
					"", -- [2]
				},
				[135562] = {
					"Ядовитый змей", -- [1]
					"Храм Сетралисс", -- [2]
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
				[132481] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
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
				[134916] = {
					"Подвальный охотник", -- [1]
					"", -- [2]
				},
				[139005] = {
					"Следопыт из племени Дикой Глуши", -- [1]
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
				[138623] = {
					"Аматет-лучник", -- [1]
					"", -- [2]
				},
				[139006] = {
					"Фурболг из племени Дикой Глуши", -- [1]
					"", -- [2]
				},
				[135254] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[126919] = {
					"Призывательница шторма из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[12101] = {
					"Лавоменталь", -- [1]
					"Огненные Недра", -- [2]
				},
				[134787] = {
					"Краб-иглохват", -- [1]
					"SarasIsland", -- [2]
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
				[130436] = {
					"Отдыхающий работник", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138625] = {
					"Аматет-каратель", -- [1]
					"", -- [2]
				},
				[145402] = {
					"Одичавшая безумица", -- [1]
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
				[139009] = {
					"Дикий охотник", -- [1]
					"", -- [2]
				},
				[140983] = {
					"Хладобур-разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[132744] = {
					"Ледяная гидра", -- [1]
					"", -- [2]
				},
				[141495] = {
					"Кул-тирасский пехотинец", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136964] = {
					"Арбалетчица из Гнезда", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[128967] = {
					"Снайпер дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[133384] = {
					"Меректа", -- [1]
					"Храм Сетралисс", -- [2]
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
				[136592] = {
					"Флинн Фэйрвинд", -- [1]
					"", -- [2]
				},
				[139651] = {
					"Глубинник из племени Холодного Сияния", -- [1]
					"SarasIsland", -- [2]
				},
				[139339] = {
					"Защитник из племени Ледоклыков", -- [1]
					"", -- [2]
				},
				[140675] = {
					"Мать стаи Муго", -- [1]
					"", -- [2]
				},
				[128649] = {
					"Сержант Бейнбридж", -- [1]
					"Осада Боралуса", -- [2]
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
				[148584] = {
					"Верховный маг Мордент Вечерняя Тень", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[135246] = {
					"Лотти Колючка", -- [1]
					"", -- [2]
				},
				[134794] = {
					"Темный ползун", -- [1]
					"SarasIsland", -- [2]
				},
				[139014] = {
					"Дикий лунный искатель", -- [1]
					"", -- [2]
				},
				[128969] = {
					"Командир из корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
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
				[138631] = {
					"Землепроходец Квадим", -- [1]
					"", -- [2]
				},
				[137097] = {
					"Заклинатель с дороги Храброгласа", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140294] = {
					"Волк-снегошкур", -- [1]
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
				[140678] = {
					"Снегобородый ревун", -- [1]
					"", -- [2]
				},
				[136893] = {
					"Землетряс Агган", -- [1]
					"", -- [2]
				},
				[138643] = {
					"Квалдир-берсерк", -- [1]
					"", -- [2]
				},
				[137405] = {
					"Цепкий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134807] = {
					"Древняя твердопанцирная черепаха", -- [1]
					"", -- [2]
				},
				[139400] = {
					"Речной заклинатель из клана Болотных Теней", -- [1]
					"", -- [2]
				},
				[140679] = {
					"Снегобородый вендиго", -- [1]
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
				[132056] = {
					"Огнелетчица Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138635] = {
					"Командир Хусан", -- [1]
					"", -- [2]
				},
				[145850] = {
					"Гилнеасский сапер", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[135706] = {
					"Мародер из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[138562] = {
					"Личинка из Бездны", -- [1]
					"", -- [2]
				},
				[134900] = {
					"Паук-ядоклык", -- [1]
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
				[136207] = {
					"Стромгардская защитница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[136208] = {
					"Стромгардский арбалетчик", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[145851] = {
					"Калдорай - наездник на гиппогрифе", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[135834] = {
					"Пагубное облако", -- [1]
					"", -- [2]
				},
				[132893] = {
					"Дух огня", -- [1]
					"SarasIsland", -- [2]
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
				[140430] = {
					"Скальный козлик", -- [1]
					"SarasIsland", -- [2]
				},
				[122086] = {
					"Сталешкур из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[126291] = {
					"Пехотинец Альянса", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138641] = {
					"Квалдир-ужасень", -- [1]
					"SarasIsland", -- [2]
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
				[139672] = {
					"Бармашлеп", -- [1]
					"SarasIsland", -- [2]
				},
				[139026] = {
					"Призыватель Затмения", -- [1]
					"", -- [2]
				},
				[126423] = {
					"Коралловый краб", -- [1]
					"", -- [2]
				},
				[122965] = {
					"Вол'каал", -- [1]
					"Атал'Дазар", -- [2]
				},
				[130318] = {
					"Пророк из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[136688] = {
					"Фанатичный бурильщик", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[139539] = {
					"Тавок, Молот Императрицы", -- [1]
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
				[129232] = {
					"Шеф Разданк", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[130319] = {
					"Гоплит из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[137614] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
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
				[148940] = {
					"Калдорайская химера", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139674] = {
					"Глубинный ходок", -- [1]
					"SarasIsland", -- [2]
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
				[139459] = {
					"Каменный солдат", -- [1]
					"", -- [2]
				},
				[122088] = {
					"Тихоступ из клана Скользящего Плавника", -- [1]
					"", -- [2]
				},
				[130404] = {
					"Крысолов", -- [1]
					"Вольная Гавань", -- [2]
				},
				[132807] = {
					"Цийлинь клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[122984] = {
					"Дазар'айский колосс", -- [1]
					"Атал'Дазар", -- [2]
				},
				[146880] = {
					"Голвран Загадочный", -- [1]
					"", -- [2]
				},
				[140995] = {
					"Руинный охотник", -- [1]
					"SarasIsland", -- [2]
				},
				[135366] = {
					"Поджигатель из братства Чернозубых", -- [1]
					"Тол Дагор", -- [2]
				},
				[139460] = {
					"Каменный ткач земли", -- [1]
					"", -- [2]
				},
				[131402] = {
					"Клещ из Подгнилья", -- [1]
					"Подгнилье", -- [2]
				},
				[129526] = {
					"Морячок из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[134599] = {
					"Усиленный призыватель шторма", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138437] = {
					"Сзерис Завоеватель", -- [1]
					"", -- [2]
				},
				[146881] = {
					"Ведун Бринвульф", -- [1]
					"", -- [2]
				},
				[122971] = {
					"Дазар'айский сокрушитель", -- [1]
					"Атал'Дазар", -- [2]
				},
				[140264] = {
					"Рунокопытный олененок", -- [1]
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
				[138438] = {
					"Разрыватель волн Сталеклык", -- [1]
					"", -- [2]
				},
				[130661] = {
					"Геомант Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134600] = {
					"Песчаный стрелок", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[140977] = {
					"Нефритовый костеглод", -- [1]
					"", -- [2]
				},
				[139680] = {
					"Ловец из темных глубин", -- [1]
					"SarasIsland", -- [2]
				},
				[139462] = {
					"Каменный глиночет", -- [1]
					"", -- [2]
				},
				[123292] = {
					"Блестопанцирный хвататель", -- [1]
					"SarasIsland", -- [2]
				},
				[136884] = {
					"Щетинистый боевой страж", -- [1]
					"", -- [2]
				},
				[138888] = {
					"Ворожей из дружины Кровавого Киля", -- [1]
					"", -- [2]
				},
				[138019] = {
					"Кул-тирасский боец авангарда", -- [1]
					"Осада Боралуса", -- [2]
				},
				[144837] = {
					"Олень c Темных берегов", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[138659] = {
					"Оживленная гончая", -- [1]
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
				[137764] = {
					"Опытная волшебница", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[140262] = {
					"Молодая рунокопытная олениха", -- [1]
					"", -- [2]
				},
				[146884] = {
					"Воевода Хьельскард", -- [1]
					"", -- [2]
				},
				[122605] = {
					"Окаменевший враг", -- [1]
					"", -- [2]
				},
				[122986] = {
					"Дикий небесный крикун", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139464] = {
					"Ревун клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[134058] = {
					"Призывательница штормов Фэй", -- [1]
					"Святилище Штормов", -- [2]
				},
				[133835] = {
					"Дикий кровавый роевик", -- [1]
					"Подгнилье", -- [2]
				},
				[140076] = {
					"Крепкорук-вожак", -- [1]
					"", -- [2]
				},
				[138441] = {
					"Глубинная певунья", -- [1]
					"", -- [2]
				},
				[140973] = {
					"Туннельный бурильщик", -- [1]
					"", -- [2]
				},
				[146859] = {
					"Порабощенный элементаль камня", -- [1]
					"SarasIsland", -- [2]
				},
				[144071] = {
					"Заклинательница моря из братства Стальных Волн", -- [1]
					"Осада Боралуса", -- [2]
				},
				[143011] = {
					"Песочный окунь", -- [1]
					"", -- [2]
				},
				[126185] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[146118] = {
					"Агрессивный иглоспин", -- [1]
					"", -- [2]
				},
				[136139] = {
					"Механомиротворец", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[146889] = {
					"Вестник смерти из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[144839] = {
					"Белохвостая олениха", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[139431] = {
					"Хранитель склепа", -- [1]
					"", -- [2]
				},
				[141283] = {
					"Кул-тирасский стражник", -- [1]
					"Осада Боралуса", -- [2]
				},
				[139466] = {
					"Кобальтовый камнестраж", -- [1]
					"", -- [2]
				},
				[138281] = {
					"Безликий осквернитель", -- [1]
					"Подгнилье", -- [2]
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
				[140643] = {
					"Лютый йети-крепкорог", -- [1]
					"", -- [2]
				},
				[138469] = {
					"Обсидиановый чешуйчатый губитель", -- [1]
					"", -- [2]
				},
				[132913] = {
					"Островной эттин", -- [1]
					"", -- [2]
				},
				[138444] = {
					"Генерал Веспарак", -- [1]
					"", -- [2]
				},
				[137517] = {
					"Разрушительница из дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[140970] = {
					"Скальный разрыватель", -- [1]
					"SarasIsland", -- [2]
				},
				[136892] = {
					"Брутарыл", -- [1]
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
				[138443] = {
					"Чешуестраж Булет", -- [1]
					"", -- [2]
				},
				[135474] = {
					"Ведьма-послушница", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[133556] = {
					"Разак Сковородкер", -- [1]
					"", -- [2]
				},
				[144842] = {
					"Прибрежный краб", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[133836] = {
					"Оживленный страж", -- [1]
					"Подгнилье", -- [2]
				},
				[130025] = {
					"Громила из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[129527] = {
					"Буканьер из братства Трюмных Крыс", -- [1]
					"Вольная Гавань", -- [2]
				},
				[131383] = {
					"Заклинатель спор Занча", -- [1]
					"Подгнилье", -- [2]
				},
				[129758] = {
					"Гренадер из братства Стальных Волн", -- [1]
					"Вольная Гавань", -- [2]
				},
				[136880] = {
					"Свинобраз из племени Острогривов", -- [1]
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
				[136882] = {
					"Защитник из племени Острогривов", -- [1]
					"", -- [2]
				},
				[134602] = {
					"Скрытный убийца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[132797] = {
					"Елененок", -- [1]
					"", -- [2]
				},
				[133585] = {
					"Дина \"Диззи\" Головокружилка", -- [1]
					"", -- [2]
				},
				[136889] = {
					"Шипастый колдун Так", -- [1]
					"", -- [2]
				},
				[137395] = {
					"Опытный пехотинец", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[138447] = {
					"Воительница Салария", -- [1]
					"", -- [2]
				},
				[135975] = {
					"Отдыхающая работница", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129828] = {
					"Океанский щелкун", -- [1]
					"SarasIsland", -- [2]
				},
				[130026] = {
					"Морской колдун из братства Трюмных Крыс", -- [1]
					"Тол Дагор", -- [2]
				},
				[136391] = {
					"Хранитель Сердца", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[133944] = {
					"Аспидис", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[122973] = {
					"Дазар'айский духовник", -- [1]
					"Атал'Дазар", -- [2]
				},
				[132051] = {
					"Кровавый клещ", -- [1]
					"Подгнилье", -- [2]
				},
				[140979] = {
					"Длиннозуб", -- [1]
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
				[138647] = {
					"Хъяна Вестница Туманов", -- [1]
					"", -- [2]
				},
				[146838] = {
					"Крошащийся скелет", -- [1]
					"", -- [2]
				},
				[124581] = {
					"Твердопанцирный крепкохват", -- [1]
					"", -- [2]
				},
				[127381] = {
					"Ильный краб", -- [1]
					"Тол Дагор", -- [2]
				},
				[126205] = {
					"Нажив-о-матик", -- [1]
					"", -- [2]
				},
				[136249] = {
					"Сторожевой элементаль", -- [1]
					"Святилище Штормов", -- [2]
				},
				[146893] = {
					"Мистик из клана Гнилой Плоти", -- [1]
					"", -- [2]
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
				[98035] = {
					"Зловещий охотник", -- [1]
					"Сверкающие копи", -- [2]
				},
				[136250] = {
					"Проклинатель худу", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[139422] = {
					"Бронированный укротитель кролусков", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[134612] = {
					"Цепкие щупальца", -- [1]
					"Святилище Штормов", -- [2]
				},
				[132892] = {
					"Ветролист", -- [1]
					"", -- [2]
				},
				[138481] = {
					"Хромит", -- [1]
					"SarasIsland", -- [2]
				},
				[140854] = {
					"Дух отлива", -- [1]
					"", -- [2]
				},
				[136890] = {
					"Железный Оркас", -- [1]
					"", -- [2]
				},
				[140443] = {
					"Агрессивный мускусный як", -- [1]
					"", -- [2]
				},
				[138646] = {
					"Квалдир - призывательница туманов", -- [1]
					"", -- [2]
				},
				[130639] = {
					"Злобнокус-пожиратель", -- [1]
					"", -- [2]
				},
				[146895] = {
					"Вандал из клана Гнилой Плоти", -- [1]
					"", -- [2]
				},
				[134338] = {
					"Жрец моря - каратель", -- [1]
					"Святилище Штормов", -- [2]
				},
				[130028] = {
					"Жрица корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[132802] = {
					"Йети-крепкорог", -- [1]
					"", -- [2]
				},
				[126190] = {
					"Темный чародей из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[137940] = {
					"Сторожевая акула", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[138846] = {
					"Янтарнокрылый ловец ума", -- [1]
					"", -- [2]
				},
				[135247] = {
					"Варигг", -- [1]
					"", -- [2]
				},
				[138561] = {
					"Безликий бичеватель разума", -- [1]
					"", -- [2]
				},
				[134214] = {
					"Клинок Бездны Келейн", -- [1]
					"", -- [2]
				},
				[146874] = {
					"Призывательница ветров Марайя", -- [1]
					"", -- [2]
				},
				[139476] = {
					"Каменное чудище", -- [1]
					"", -- [2]
				},
				[134686] = {
					"Взрослый кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[132491] = {
					"Кул-тирасский стрелок", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129517] = {
					"Оживленный ящер", -- [1]
					"Атал'Дазар", -- [2]
				},
				[129830] = {
					"Чудовищный Клац-Клац", -- [1]
					"SarasIsland", -- [2]
				},
				[127503] = {
					"Надзиратель Корги", -- [1]
					"Тол Дагор", -- [2]
				},
				[146833] = {
					"Некромантка-заклинательница", -- [1]
					"", -- [2]
				},
				[140356] = {
					"Яркая Чешуйка", -- [1]
					"", -- [2]
				},
				[134216] = {
					"Темная заклинательница Зарра", -- [1]
					"", -- [2]
				},
				[131545] = {
					"Леди Уэйкрест", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[140691] = {
					"Гигантский лютоклык", -- [1]
					"", -- [2]
				},
				[130087] = {
					"Налетчик из братства Стальных Волн", -- [1]
					"Тол Дагор", -- [2]
				},
				[128651] = {
					"Хадал Черная Бездна", -- [1]
					"Осада Боралуса", -- [2]
				},
				[134616] = {
					"Подрастающий кролуск", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[144972] = {
					"Калдорай-охотница", -- [1]
					"Фронты на Темных берегах (Орда)", -- [2]
				},
				[133389] = {
					"Гальваззт", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138830] = {
					"Троваст Ведомый Звездами", -- [1]
					"", -- [2]
				},
				[133593] = {
					"Техник-эксперт", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134283] = {
					"Анахорет Ланна", -- [1]
					"", -- [2]
				},
				[140985] = {
					"Кислотный червь", -- [1]
					"", -- [2]
				},
				[131666] = {
					"Заклинательница шипов из ковена", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[134617] = {
					"Детеныш кролуска", -- [1]
					"Храм Сетралисс", -- [2]
				},
				[138572] = {
					"Генерал Увош", -- [1]
					"", -- [2]
				},
				[147965] = {
					"Нестабильный азерит", -- [1]
					"", -- [2]
				},
				[131667] = {
					"Оживленный голиаф", -- [1]
					"Усадьба Уэйкрестов", -- [2]
				},
				[138061] = {
					"Докер Торговой компании", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[134423] = {
					"Обитатель глубин", -- [1]
					"Святилище Штормов", -- [2]
				},
				[140619] = {
					"Береговой ярдозуб", -- [1]
					"", -- [2]
				},
				[139342] = {
					"Воин из племени Ледоклыков", -- [1]
					"SarasIsland", -- [2]
				},
				[136665] = {
					"Наблюдатель корпорации Эшвейнов", -- [1]
					"Тол Дагор", -- [2]
				},
				[138968] = {
					"Стальной зев клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[135248] = {
					"Бриона Кровожадная", -- [1]
					"", -- [2]
				},
				[139480] = {
					"Каменный защитник", -- [1]
					"", -- [2]
				},
				[127048] = {
					"Землекоп из племени Сухоусов", -- [1]
					"Фронт Арати (Орда)", -- [2]
				},
				[135764] = {
					"Взрывной тотем", -- [1]
					"Гробница королей", -- [2]
				},
				[127879] = {
					"Щитоносец из армии Зула", -- [1]
					"Атал'Дазар", -- [2]
				},
				[139351] = {
					"Глашатай теней Анголо", -- [1]
					"SarasIsland", -- [2]
				},
				[140760] = {
					"Земляной великан", -- [1]
					"", -- [2]
				},
				[138969] = {
					"Дух могу из клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[136186] = {
					"Жрица моря - спиритуалистка", -- [1]
					"Святилище Штормов", -- [2]
				},
				[137625] = {
					"Крушащий ужас", -- [1]
					"Осада Боралуса", -- [2]
				},
				[129529] = {
					"Задира из братства Чернозубых", -- [1]
					"Вольная Гавань", -- [2]
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
				[134769] = {
					"Зазубренная клешня", -- [1]
					"", -- [2]
				},
				[138970] = {
					"Мстительный дух", -- [1]
					"SarasIsland", -- [2]
				},
				[138465] = {
					"Канонир дома Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[135263] = {
					"Наводчица корпорации Эшвейнов", -- [1]
					"Осада Боралуса", -- [2]
				},
				[136802] = {
					"Углекус", -- [1]
					"", -- [2]
				},
				[127479] = {
					"Королева песков", -- [1]
					"Тол Дагор", -- [2]
				},
				[140250] = {
					"Елень", -- [1]
					"", -- [2]
				},
				[139664] = {
					"Злобноплав из племени Гнилой Чешуи", -- [1]
					"SarasIsland", -- [2]
				},
				[134914] = {
					"Подвальный паук", -- [1]
					"", -- [2]
				},
				[138971] = {
					"Змей клана Цзыань-Ти", -- [1]
					"", -- [2]
				},
				[126847] = {
					"Капитан Рауль", -- [1]
					"Вольная Гавань", -- [2]
				},
				[137713] = {
					"Краб-магнат", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[129214] = {
					"Платный разгонятель толпы", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
				[132855] = {
					"Железнопут-быстролап", -- [1]
					"", -- [2]
				},
				[130437] = {
					"Кобольд-рудокоп", -- [1]
					"ЗОЛОТАЯ ЖИЛА!!!", -- [2]
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["captured_spells"] = {
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[193316] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[871] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[271178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бледный пожиратель",
					["npcID"] = 137830,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[185763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[25046] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[288330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[46968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[29166] = {
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[139546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[228318] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Субстанция души",
					["npcID"] = 135240,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[279153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[190356] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[265002] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[199600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[264110] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Меченая сестра",
					["npcID"] = 131818,
				},
				[287379] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[279793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[268956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[268893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кають-СвежевательДуш",
					["npcID"] = 0,
				},
				[265005] = {
					["type"] = "BUFF",
					["source"] = "Раал Прожорливый",
					["npcID"] = 131863,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[268234] = {
					["npcID"] = 136541,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Желчный слизнюченыш",
					["encounterID"] = 2115,
				},
				[132404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[57934] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[273294] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[61305] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["encounterID"] = 2115,
				},
				[199603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[265391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Распорядитель банкета",
					["npcID"] = 131586,
				},
				[225788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[264931] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[23920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[267612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[190456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[193357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[288333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[264693] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[207386] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[292361] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аннксунамун",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[264694] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[281843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[193358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[281844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[193359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[271071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аннесия-Голдринн",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[355] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[22812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[279152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[102352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[271711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[97462] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["encounterID"] = 2115,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[288988] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[265337] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Запачканный кровью поросенок",
					["npcID"] = 135048,
				},
				[264153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Прожорливая личинка",
					["npcID"] = 134024,
				},
				[57755] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[288989] = {
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[102351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[264510] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевший стрелок",
					["npcID"] = 131849,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[271175] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бледный пожиратель",
					["npcID"] = 137830,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аннесия-Голдринн",
					["npcID"] = 0,
				},
				[278456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Прожорливая личинка",
					["npcID"] = 134024,
				},
				[268910] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[271174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Бледный пожиратель",
					["npcID"] = 137830,
				},
				[8936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[268911] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[1160] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[270232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[268953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пыхтомэн-Ясеневыйлес",
					["npcID"] = 0,
				},
				[157982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[198304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[2908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[1833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[195627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пыхтомэн-Ясеневыйлес",
					["npcID"] = 0,
				},
				[84714] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[275863] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[108238] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["encounterID"] = 2115,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Гурв-СвежевательДуш",
					["npcID"] = 0,
				},
				[264520] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевший мастер выживания",
					["npcID"] = 131850,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кають-СвежевательДуш",
					["npcID"] = 0,
				},
				[265410] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Гуляка из дома Уэйкрестов",
					["npcID"] = 131847,
				},
				[199804] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[278444] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Прожорливая личинка",
					["npcID"] = 134024,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наилинг-ВечнаяПесня",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[5176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[292360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Дромсель",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[264456] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевший стрелок",
					["npcID"] = 131849,
				},
				[102342] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[264712] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["encounterID"] = 2115,
				},
				[1776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[250870] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evilmind-BurningLegion",
					["encounterID"] = 2115,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кають-СвежевательДуш",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[132168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Мимивашамать-СтражСмерти",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[13877] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[278310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[5302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[271538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[193356] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[5246] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[264655] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зараженный крестьянин",
					["npcID"] = 134041,
				},
				[277724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[288844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Восставшая душа",
					["npcID"] = 148716,
				},
				[267824] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Субстанция души",
					["npcID"] = 135240,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[127797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[272276] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[1784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[61391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[31224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[6343] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[45438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[147833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[1850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[255909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[290121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Аннесия-Голдринн",
					["npcID"] = 0,
				},
				[265642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зараженный мастиф",
					["npcID"] = 135234,
				},
				[59628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[6572] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кають-СвежевательДуш",
					["npcID"] = 0,
				},
				[295134] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[250878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[145205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[34428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[268955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[268998] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Кають-СвежевательДуш",
					["npcID"] = 0,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[114108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[164815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Наилинг-ВечнаяПесня",
					["npcID"] = 0,
				},
				[20243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[12975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[102793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[257413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Пыхтомэн-Ясеневыйлес",
					["npcID"] = 0,
				},
				[339] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["encounterID"] = 2115,
				},
				[13750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[264923] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[199754] = {
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
				},
				[81262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Период цветения",
					["npcID"] = 47649,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[118779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2565] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[264525] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Обезумевший мастер выживания",
					["npcID"] = 131850,
				},
				[115767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[264734] = {
					["npcID"] = 131863,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Раал Прожорливый",
					["encounterID"] = 2115,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[8676] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[23922] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[2094] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["encounterID"] = 2115,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2115,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Földlakó-Ragnaros",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[193315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Десроук-СвежевательДуш",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[278124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Зёба",
					["npcID"] = 0,
				},
				[288388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Восставшая душа",
					["npcID"] = 148716,
				},
				[33763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Espritdruid-Eredar",
					["npcID"] = 0,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evilmind-BurningLegion",
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
				["ShowNamePlateLoseAggroFlash"] = "1",
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
	},
}
