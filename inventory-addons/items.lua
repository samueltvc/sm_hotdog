--[[

	-- ADD THIS TO ox_inventoy/data/items.lua !! --
	
['pecivo'] = {
	label = 'Pastry',
	weight = 10,
	stack = true,
},

['tatarka'] = {
	label = 'Mustard',
	weight = 10,
	stack = true,
},


['kecup'] = {
	label = 'Ketchup',
	weight = 10,
	stack = true,
},

['salad'] = {
	label = 'Salad',
	weight = 10,
	stack = true,
},

['parok'] = {
	label = 'Sausage',
	weight = 10,
	stack = true,
},

['mz_hranolky'] = {
	label = 'Frozen Fries',
	weight = 10,
	stack = true,
},

['hotdog'] = {
	label = 'Hotdog with Ketchup',
	weight = 100,
	stack = false,
	client = {
		status = { hunger = 200000 },
		anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		prop = { model = 'prop_cs_hotdog_01', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		usetime = 2500
	}
},

['hotdog_tatarka'] = {
	label = 'Hotdog with Mustard',
	weight = 100,
	stack = false,
	client = {
		status = { hunger = 200000 },
		anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		prop = { model = 'prop_cs_hotdog_01', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		usetime = 2500
	}
},

['hranolky_kecup'] = {
	label = 'Fries with Ketchup',
	weight = 100,
	stack = false,
	client = {
		status = { hunger = 200000 },
		anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		--prop = { model = 'prop_cs_hotdog_01', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		usetime = 2500
	}
},

['hranolky_tatarka'] = {
	label = 'Fries with Tatar',
	weight = 100,
	stack = false,
	client = {
		status = { hunger = 200000 },
		anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
		--prop = { model = 'prop_cs_hotdog_01', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
		usetime = 2500
	}
},

--]]