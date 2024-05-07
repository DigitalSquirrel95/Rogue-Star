/datum/map
	var/list/adj = list(
		"Aggro",
		"Breathless",
		"Calm",
		"Crunchy",
		"Dauntless",
		"Daunted",
		"Dubious",
		"Enormous",
		"Enraged",
		"Enthusiastic",
		"Grimey",
		"Gronchy",
		"Gwumpy",
		"Immense",
		"Incredible",
		"Leggy",
		"Long",
		"Machismo",
		"Miniscule",
		"Mischievous",
		"Moist",
		"Pensive",
		"Powerful",
		"Qwunchy",
		"Radical",
		"Rascally",
		"Rogue",
		"Scrungly",
		"Silly",
		"Soft",
		"Space",
		"Tranquil",
		"Voracious",
		"Weary",
		"Wise",
		"Zesty"
	)
	var/list/sub = list(
		"Bunnies",
		"Catboys",
		"Catgirls",
		"Cheese Puffs",
		"Doglins",
		"Doofs",
		"Dreamers",
		"Dwellers",
		"Experiments",
		"Fish",
		"Ghosts",
		"Gobs",
		"Goblins",
		"Goobers",
		"Gremlins",
		"Kin",
		"Kitsunes",
		"Kobs",
		"Kobolds",
		"Mischief",
		"Monsters",
		"Peebs",
		"Pocket Men",
		"Rascals",
		"Rogues",
		"Schemers",
		"Smoochers",
		"Snowglobe Dwellers",
		"Sparkledogs",
		"Squirrels",
		"Stars",
		"Station",
		"Teppi",
		"Vorers",
		"Wizards",
		"Wiznerds"
	)

	var/list/suf = list(
		"of the Radicalscape",
		"in the Gloom",
		"upon the Wind",
		"among the Stars",
		"in the Lasagna",
		"around the Lasagna",
		"on the Lasagna",
		"of the Dark",
		"upon the Space Dog",
		"13",
		"of Horrors",
		"in Toyland",
		"of Terror",
		"from Outer Space",
		"across the 13th Dimension",
		"within the Vorelands",
		"in a Tummy",
		"in Rogue Space",
		"of the Empty Path",
		"of the Second Dimension",
		"Lost in Bunny Space",
		"Across the Universe",
		"to the Moon",
		"Causing Problems on Purpose",
		"Causing Problems Without Knowing",
		"Solving Problems with Kindness",
		"Solving Problems with Softness",
		"With Too Many Tails",
		"With Too Many Tentacles",
		"Wrapped in Vines",
		"Under Spider Occupation",
		"Hiding Nuts for Squirrels"
	)


/datum/map/proc/funny_name()
	GLOB.special_station_name = "[pick(adj)] [pick(sub)] [pick(suf)]"
	for(var/mob/M in player_list)
		if(M.client)
			M.client.update_special_station_name()
