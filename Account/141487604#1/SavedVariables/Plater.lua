
PlaterDB = {
	["profileKeys"] = {
		["Дайтемнеключ - Ревущий фьорд"] = "Default",
		["Царева - Ревущий фьорд"] = "Default",
		["Сашкинадашка - Ревущий фьорд"] = "Default",
		["Зёбинприст - Ревущий фьорд"] = "Default",
		["Зёбедам - Ревущий фьорд"] = "Default",
		["Зёбинмонк - Ревущий фьорд"] = "Default",
		["Зёбинатор - Ревущий фьорд"] = "Default",
		["Василец - Ревущий фьорд"] = "Default",
		["Зёбинмаг - Ревущий фьорд"] = "Default",
		["Зёба - Ревущий фьорд"] = "Default",
		["Зёбинпаладин - Ревущий фьорд"] = "Default",
		["Зёбинфейл - Ревущий фьорд"] = "Default",
		["Ппробник - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
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
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
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
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1535815768,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1542816185,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Name"] = "Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [15]
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
			["aura_timer"] = false,
			["plate_config"] = {
				["friendlyplayer"] = {
					["percent_text_ooc"] = true,
					["actorname_text_size"] = 15,
					["actorname_text_spacing"] = 14,
					["only_damaged"] = false,
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
				["friendlynpc"] = {
					["big_actorname_text_size"] = 15,
					["health_incombat"] = {
						100.014289855957, -- [1]
					},
					["actorname_text_size"] = 10.8989448547363,
					["all_names"] = true,
					["actorname_text_spacing"] = 9.89894485473633,
					["quest_enabled"] = false,
					["only_names"] = false,
					["percent_text_enabled"] = true,
					["relevance_state"] = 4,
					["big_actortitle_text_size"] = 15,
					["percent_show_percent"] = false,
				},
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
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
					["Revision"] = 53,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "A simple reorder for the health bar and cast bar.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --set the height offset\n    local healthBarOffset = 0\n    local castBarOffset = 0\n    \n    unitFrame.healthBar:ClearAllPoints()\n    unitFrame.healthBar:SetPoint (\"bottomleft\", unitFrame, \"bottomleft\", 0, healthBarOffset)\n    unitFrame.healthBar:SetPoint (\"bottomright\", unitFrame, \"bottomright\", 0, healthBarOffset)\n    \n    unitFrame.castBar:ClearAllPoints()\n    unitFrame.castBar:SetPoint (\"topleft\", unitFrame, \"bottomleft\", 0, castBarOffset)\n    unitFrame.castBar:SetPoint (\"topright\", unitFrame, \"bottomright\", 0, castBarOffset)\n    \nend\n\n\n",
					},
					["Time"] = 1543188991,
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
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 129,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --the border has 3 layers: inner, middle and outter.\n    --you can defyne the alpha of each one of these layers below.\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetBorderColor (r, g, b)\n    local canExportBorder = true\n    \n    --border transparency\n    local innerBorderAlpha = 1.0  --value from 0 to 1\n    local middleBorderAlpha = 1.0\n    local outBorderAlpha = 0\n    \n    --border color\n    local borderColor = \"black\"\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        --creates an overlay frame above the health bar\n        local overlayFrame = CreateFrame (\"frame\", nil, unitFrame.healthBar)\n        overlayFrame:SetAllPoints()\n        overlayFrame:SetFrameLevel (unitFrame.healthBar:GetFrameLevel()+2)        \n        envTable.BorderFrame = overlayFrame\n        \n        DetailsFramework:CreateBorder (overlayFrame, innerBorderAlpha, middleBorderAlpha, outBorderAlpha)\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        overlayFrame:SetBorderColor (r, g, b)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = overlayFrame\n        end\n        \n        if (not isEnabled) then\n            overlayFrame:Hide()\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1543188568,
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
					["Revision"] = 135,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateComboPoints()\n    \nend\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        envTable.ComboPointFrame = CreateFrame (\"frame\", nil, unitFrame)\n        envTable.ComboPointFrame:SetScale (sizes.scale)\n        \n        --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n        \n        --animations\n        local onPlayShowAnimation = function (animation)\n            --stop the hide animation if it's playing\n            if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().HideAnimation:Stop()\n            end\n            \n            animation:GetParent():Show()\n        end\n        \n        local onPlayHideAnimation = function (animation)\n            --stop the show animation if it's playing\n            if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().ShowAnimation:Stop()\n            end\n        end        \n        local onStopHideAnimation = function (animation)\n            animation:GetParent():Hide()       \n        end\n        \n        local createAnimations = function (comboPoint)\n            --on show\n            comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n            \n            --on hide\n            comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n        end\n        \n        --build combo point frame        \n        for i =1, 10 do \n            local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n            f:SetSize (sizes.width, sizes.height)\n            tinsert (envTable.ComboPoints, f)\n            \n            local backgroundTexture = f:CreateTexture (nil, \"background\")\n            backgroundTexture:SetTexture (textures.backgroundTexture)\n            backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n            backgroundTexture:SetSize (sizes.width, sizes.height)\n            backgroundTexture:SetPoint (\"center\")\n            \n            local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n            comboPointTexture:SetTexture (textures.comboPointTexture)\n            comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n            \n            comboPointTexture:SetSize (sizes.width, sizes.height)\n            comboPointTexture:SetPoint (\"center\")\n            comboPointTexture:Hide()            \n            \n            f.IsActive = false\n            \n            f.backgroundTexture = backgroundTexture\n            f.comboPointTexture = comboPointTexture\n            \n            createAnimations (f)\n        end\n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1543177139,
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
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 155,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)                \n            else\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = false;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    envTable.TargetAmount = envTable.TargetAmount or Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n    Plater.SetAnchor (envTable.TargetAmount, anchor);\n    \n    if (unitFrame.healthBar.TargetAmount) then\n        print (\"Nameplate Already have a Target Amount String!\")\n    end\n    \n    unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------       \n    \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1542808551,
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
					["Revision"] = 67,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1542815875,
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
			},
			["last_news_time"] = 1543749097,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Color Change"] = 1,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Unit - Important"] = 5,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Debuff Alert"] = 3,
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
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Reorder Nameplate"] = 1,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 1,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Monk Statue"] = 2,
				["Players Targetting Amount"] = 1,
			},
			["minor_width_scale"] = 0.493782460689545,
			["aura_height"] = 18,
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "0.8",
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
				["nameplateOtherTopInset"] = "0.025",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "0.8",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["patch_version"] = 2,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
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
			["captured_spells"] = {
				[104318] = {
					["source"] = "Дикий бес",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119415] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Полковникмед",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115450] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115834] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271174] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[271175] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[271178] = {
					["source"] = "Бледный пожиратель",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[209858] = {
					["type"] = "DEBUFF",
					["source"] = "Субстанция души",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135240,
				},
				[57934] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279885] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1725] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264024] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[264027] = {
					["type"] = "BUFF",
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131812,
				},
				[268122] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[278359] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268125] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Саксам-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264038] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[264040] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264556] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260541] = {
					["type"] = "BUFF",
					["source"] = "Оживленный голиаф",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[115078] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264057] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279924] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2094] = {
					["encounterID"] = 2115,
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260805] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["type"] = "BUFF",
					["source"] = "Тургенкам-ВечнаяПесня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89751] = {
					["type"] = "BUFF",
					["source"] = "Страж Скверны",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[235219] = {
					["encounterID"] = 2114,
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260551] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["type"] = "BUFF",
					["source"] = "Мамлоу-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Страж Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228318] = {
					["type"] = "BUFF",
					["source"] = "Субстанция души",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135240,
				},
				[124682] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25046] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267171] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278431] = {
					["type"] = "BUFF",
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142587,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264105] = {
					["source"] = "Меченая сестра",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131818,
				},
				[288158] = {
					["type"] = "BUFF",
					["source"] = "Трэшмагедон-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[697] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264110] = {
					["type"] = "BUFF",
					["source"] = "Меченая сестра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131818,
				},
				[260569] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264626] = {
					["encounterID"] = 2113,
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278444] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Саксам-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278456] = {
					["type"] = "DEBUFF",
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111898] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[89766] = {
					["source"] = "Страж Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[8690] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[56222] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["type"] = "BUFF",
					["source"] = "Dag-ithak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[264140] = {
					["source"] = "Шипастая гончая",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131669,
				},
				[228600] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264655] = {
					["source"] = "Зараженный крестьянин",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134041,
				},
				[278474] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[225787] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257260] = {
					["type"] = "BUFF",
					["source"] = "Шипастый страж",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264150] = {
					["source"] = "Шипастый страж",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264153] = {
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["type"] = "BUFF",
					["source"] = "Alyriar-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2116,
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265187] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260852] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108199] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278504] = {
					["source"] = "Руническая послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[108839] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268271] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[264178] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194844] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264694] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[268278] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[197916] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8676] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Alyriar-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264712] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Шалап-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265741] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Василец",
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
				[51690] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33395] = {
					["source"] = "Wasserelementar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Полковникмед",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278551] = {
					["type"] = "BUFF",
					["source"] = "Меченая сестра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131818,
				},
				[108211] = {
					["type"] = "BUFF",
					["source"] = "Бэнок-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265759] = {
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[265760] = {
					["type"] = "BUFF",
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[265761] = {
					["type"] = "DEBUFF",
					["source"] = "Матрона Бриндл",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[289308] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278567] = {
					["type"] = "BUFF",
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131685,
				},
				[2823] = {
					["type"] = "BUFF",
					["source"] = "Бэнок-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267824] = {
					["source"] = "Субстанция души",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135240,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Тургенкам-ВечнаяПесня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Badday-Ulduar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265787] = {
					["encounterID"] = 2113,
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277564] = {
					["type"] = "BUFF",
					["source"] = "Прожорливая личинка",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277567] = {
					["source"] = "Порождение Г'ууна",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141851,
				},
				[260900] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199753] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206151] = {
					["type"] = "DEBUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280149] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["type"] = "DEBUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Зловещий охотник",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61999] = {
					["encounterID"] = 2113,
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50613] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129597] = {
					["encounterID"] = 2113,
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260923] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265337] = {
					["source"] = "Запачканный кровью поросенок",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135048,
				},
				[260926] = {
					["type"] = "DEBUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261439] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[261440] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[265346] = {
					["source"] = "Грознокрылый ворон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135049,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265347] = {
					["source"] = "Грознокрылый ворон",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135049,
				},
				[109132] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267907] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265352] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[261446] = {
					["encounterID"] = 2116,
					["source"] = "Леди Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[229206] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261447] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[280709] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185709] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280200] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185710] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278156] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["source"] = "Демонический тиран",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[265364] = {
					["source"] = "Чумная жаба",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Зулкха-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278159] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265368] = {
					["type"] = "BUFF",
					["source"] = "Заколдованный капитан",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131587,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Антистак-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265371] = {
					["source"] = "Заколдованный капитан",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131587,
				},
				[115151] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265372] = {
					["source"] = "Порабощенная стражница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131585,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260696] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[259161] = {
					["type"] = "BUFF",
					["source"] = "Саксам-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260697] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[260698] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[192225] = {
					["type"] = "BUFF",
					["source"] = "Леджиесть-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260699] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[277731] = {
					["type"] = "BUFF",
					["source"] = "Трэшмагедон-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Зулкха-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261438] = {
					["encounterID"] = 2116,
					["source"] = "Лорд Уэйкрест",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[264378] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[118] = {
					["encounterID"] = 2115,
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268234] = {
					["encounterID"] = 2115,
					["source"] = "Желчный слизнюченыш",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136541,
				},
				[260700] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[264693] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[265391] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260701] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[272668] = {
					["type"] = "BUFF",
					["source"] = "Пылающая душа",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136436,
				},
				[264050] = {
					["source"] = "Заклинательница шипов из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["encounterID"] = 2113,
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6789] = {
					["encounterID"] = 2113,
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260907] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Солена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[263905] = {
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[199804] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Страж Скверны",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260703] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Маладия",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[273294] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Wasserelementar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[228354] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265407] = {
					["source"] = "Распорядитель банкета",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[195457] = {
					["encounterID"] = 2113,
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264384] = {
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2113,
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265410] = {
					["source"] = "Гуляка из дома Уэйкрестов",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131847,
				},
				[264387] = {
					["type"] = "BUFF",
					["source"] = "Прорицательница из ковена",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131819,
				},
				[185736] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264390] = {
					["source"] = "Руническая послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[115546] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264396] = {
					["source"] = "Руническая послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[84714] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242551] = {
					["type"] = "BUFF",
					["source"] = "Трудягасан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30151] = {
					["type"] = "BUFF",
					["source"] = "Страж Скверны",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[264923] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278231] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49028] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205708] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["type"] = "BUFF",
					["source"] = "Драгенхз-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264931] = {
					["encounterID"] = 2115,
					["source"] = "Раал Прожорливый",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[114018] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288988] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
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
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273977] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Тургенкам-ВечнаяПесня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228645] = {
					["type"] = "DEBUFF",
					["source"] = "Руническое оружие",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27893,
				},
				[257408] = {
					["type"] = "BUFF",
					["source"] = "Леджиесть-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["type"] = "BUFF",
					["source"] = "Тургенкам-ВечнаяПесня",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279153] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270657] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[710] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257410] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["type"] = "DEBUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277242] = {
					["type"] = "BUFF",
					["source"] = "Шипастый страж",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Ёфрика",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["type"] = "BUFF",
					["source"] = "Трудягасан-Борейскаятундра",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261764] = {
					["type"] = "BUFF",
					["source"] = "Райзли-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263943] = {
					["source"] = "Плетельщица рун из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[260741] = {
					["encounterID"] = 2113,
					["source"] = "Сестра Брайар",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[113899] = {
					["source"] = "Демонические врата",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206930] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191920] = {
					["type"] = "BUFF",
					["source"] = "Мамлоу-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265273] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113900] = {
					["source"] = "Демонические врата",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212051] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Василец",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112870] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263959] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Полковникмед",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115310] = {
					["encounterID"] = 2113,
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263961] = {
					["source"] = "Исказительница душ из ковена Мертвых Сердец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[30283] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261264] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[261265] = {
					["type"] = "BUFF",
					["source"] = "Сестра Брайар",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
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
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Зулкха-ПиратскаяБухта",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196277] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Антистак-Ясеневыйлес",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268077] = {
					["type"] = "BUFF",
					["source"] = "Сестра Солена",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[100784] = {
					["source"] = "Chízíx-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268080] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Demonscream-Kazzak",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266035] = {
					["source"] = "Ведьма-послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135474,
				},
				[198533] = {
					["source"] = "Статуя Нефритовой Змеи",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[47528] = {
					["source"] = "Василец",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266036] = {
					["source"] = "Ведьма-послушница",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135474,
				},
				[260508] = {
					["encounterID"] = 2114,
					["source"] = "Оживленный голиаф",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[202636] = {
					["type"] = "BUFF",
					["source"] = "Саксам-СвежевательДуш",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268086] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Äeolian-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Трудягасан-Борейскаятундра",
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
				[104316] = {
					["source"] = "Demonscream-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Kresi-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260512] = {
					["type"] = "BUFF",
					["source"] = "Оживленный голиаф",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
			},
			["indicator_enemyclass"] = true,
		},
	},
}
