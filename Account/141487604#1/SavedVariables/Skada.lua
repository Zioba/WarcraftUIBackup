
SkadaDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Дайтемнеключ - Ревущий фьорд"] = "Default",
		["Зёбинатор - Ревущий фьорд"] = "Default",
		["Василец - Ревущий фьорд"] = "Default",
		["Царева - Ревущий фьорд"] = "Default",
		["Зёба - Ревущий фьорд"] = "Default",
		["Зёбинфейл - Ревущий фьорд"] = "Default",
		["Зёбинпаладин - Ревущий фьорд"] = "Default",
		["Зёбинприст - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["showself"] = true,
			["modeclicks"] = {
				["Получено урона врагом"] = 7,
				["Friendly Fire"] = 1,
				["Полученный урон"] = 36,
				["Смерти"] = 2,
				["Урон, полученный от заклинания"] = 1,
				["Урон"] = 114,
				["Прерывание"] = 5,
				["Исцеление"] = 22,
			},
			["windows"] = {
				{
					["barslocked"] = true,
					["set"] = "total",
					["y"] = 44.6981964111328,
					["point"] = "BOTTOMRIGHT",
					["mode"] = "Урон",
					["barwidth"] = 322.285583496094,
					["background"] = {
						["height"] = 227.428833007813,
					},
					["x"] = -75.0462646484375,
				}, -- [1]
			},
			["modulesBlocked"] = {
				["Tweaks"] = false,
				["Friendly Fire"] = true,
				["Power"] = true,
			},
			["icon"] = {
				["minimapPos"] = 138.538164216078,
			},
			["report"] = {
				["number"] = 2,
				["set"] = "total",
				["mode"] = "Полученный урон",
				["channel"] = "raid",
			},
			["modules"] = {
				["notankwarnings"] = true,
				["threatflash"] = false,
			},
			["versions"] = {
				["1.6.3"] = true,
				["1.6.4"] = true,
				["1.6.7"] = true,
			},
			["tentativecombatstart"] = true,
			["reset"] = {
				["instance"] = 3,
			},
		},
	},
}
