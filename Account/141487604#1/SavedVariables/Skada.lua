
SkadaDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Царева - Ревущий фьорд"] = "Default",
		["Никсиамчмо - Ревущий фьорд"] = "Default",
		["Зёбинприст - Ревущий фьорд"] = "Default",
		["Зёбинатор - Ревущий фьорд"] = "Default",
		["Зёбинмаг - Ревущий фьорд"] = "Default",
		["Зёбинфейл - Ревущий фьорд"] = "Default",
		["Дайтемнеключ - Ревущий фьорд"] = "Default",
		["Уткасосубуй - Ревущий фьорд"] = "Default",
		["Наурчмо - Ревущий фьорд"] = "Default",
		["Зёбинпаладин - Ревущий фьорд"] = "Default",
		["Сашкинадашка - Ревущий фьорд"] = "Default",
		["Василец - Ревущий фьорд"] = "Default",
		["Дебустерчмо - Ревущий фьорд"] = "Default",
		["Зёба - Ревущий фьорд"] = "Default",
		["Зёбедам - Ревущий фьорд"] = "Default",
		["Зёбинмонк - Ревущий фьорд"] = "Default",
		["Ппробник - Ревущий фьорд"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["showself"] = true,
			["modeclicks"] = {
				["Получено урона врагом"] = 9,
				["Friendly Fire"] = 1,
				["Полученный урон"] = 44,
				["Смерти"] = 3,
				["Урон, полученный от заклинания"] = 1,
				["Урон"] = 145,
				["Прерывание"] = 6,
				["Исцеление"] = 30,
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
