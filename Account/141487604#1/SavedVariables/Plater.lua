
PlaterDB = {
	["profileKeys"] = {
		["Дайтемнеключ - Ревущий фьорд"] = "Default",
		["Царева - Ревущий фьорд"] = "Default",
		["Сашкинадашка - Ревущий фьорд"] = "Default",
		["Зёбинприст - Ревущий фьорд"] = "Default",
		["Зёбедам - Ревущий фьорд"] = "Default",
		["Зёбинатор - Ревущий фьорд"] = "Default",
		["Василец - Ревущий фьорд"] = "Default",
		["Зёбинмаг - Ревущий фьорд"] = "Default",
		["Зёба - Ревущий фьорд"] = "Default",
		["Зёбинпаладин - Ревущий фьорд"] = "Default",
		["Зёбинфейл - Ревущий фьорд"] = "Default",
		["Зёбинмонк - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 129,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.SmallFlashAnimationHub:Play()\nend\n\n\n",
					["SpellIds"] = {
						257791, -- [1]
						258313, -- [2]
						257785, -- [3]
						271046, -- [4]
						258153, -- [5]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1531412155,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, 0.2, 0, 1)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, 0.2, 1, 0)\n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \nend\n\n\n\n\n\n\n",
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
					["Revision"] = 72,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["SpellIds"] = {
						277735, -- [1]
						277556, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1528748982,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["ScriptType"] = 1,
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n        envTable.Glow:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531694289,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 197,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						257016, -- [1]
						271840, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531412154,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 198,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1531694289,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend\n\n\n",
				}, -- [6]
			},
			["aura_timer"] = false,
			["plate_config"] = {
				["enemynpc"] = {
					["cast"] = {
						nil, -- [1]
						14, -- [2]
					},
					["actorname_text_spacing"] = 10,
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
			},
			["captured_spells"] = {
				[69970] = {
					["source"] = "Проповедник с \"Усмирителя небес\"",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37016,
				},
				[69969] = {
					["type"] = "DEBUFF",
					["source"] = "Призыватель с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37148,
				},
				[70602] = {
					["type"] = "DEBUFF",
					["source"] = "Воскрешенный верховный маг",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37868,
				},
				[1604] = {
					["type"] = "DEBUFF",
					["source"] = "Прислужник Шпиля",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37545,
				},
				[69930] = {
					["type"] = "DEBUFF",
					["source"] = "Мститель с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37003,
				},
				[71621] = {
					["encounterID"] = "ENCOUNTER_START",
					["source"] = "Профессор Мерзоцид",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 36678,
				},
				[69963] = {
					["source"] = "Священник с \"Усмирителя небес\"",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37021,
				},
				[71615] = {
					["type"] = "DEBUFF",
					["source"] = "Профессор Мерзоцид",
					["encounterID"] = "ENCOUNTER_START",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36678,
				},
				[69917] = {
					["type"] = "DEBUFF",
					["source"] = "Клинок ужаса с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37004,
				},
				[71465] = {
					["type"] = "BUFF",
					["source"] = "Сестра Свална",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37126,
				},
				[70394] = {
					["type"] = "BUFF",
					["source"] = "Прислужник Шпиля",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37545,
				},
				[69926] = {
					["type"] = "BUFF",
					["source"] = "Проповедник с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37016,
				},
				[69958] = {
					["source"] = "Проповедник с \"Усмирителя небес\"",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37016,
				},
				[71617] = {
					["encounterID"] = "ENCOUNTER_START",
					["source"] = "Профессор Мерзоцид",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 36678,
				},
				[70371] = {
					["type"] = "BUFF",
					["source"] = "Бесноватое поганище",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37546,
				},
				[69911] = {
					["type"] = "DEBUFF",
					["source"] = "Клинок ужаса с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37004,
				},
				[69927] = {
					["type"] = "DEBUFF",
					["source"] = "Мститель с \"Усмирителя небес\"",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 37003,
				},
				[70189] = {
					["source"] = "Горгулья Шпиля",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37544,
				},
				[69967] = {
					["source"] = "Священник с \"Усмирителя небес\"",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37021,
				},
				[70460] = {
					["source"] = "Заморозка Ледяной ловушки",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 37744,
				},
			},
			["health_statusbar_texture"] = "PlaterTexture",
			["first_run2"] = true,
			["cast_statusbar_color_nointerrupt"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
			},
			["aura_height"] = 18,
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
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "1",
				["nameplateMotion"] = "1",
				["nameplateMinScale"] = "0.8",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.025",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 1,
				["Aura - Debuff Alert"] = 2,
				["Fixate"] = 1,
				["Aura - Buff Alert"] = 2,
				["Cast - Big Alert"] = 1,
				["Unit Power"] = 1,
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_alpha"] = 0.799999952316284,
			["indicator_enemyclass"] = true,
			["auto_toggle_friendly"] = {
				["party"] = true,
				["arena"] = true,
			},
		},
	},
}
