chaparral = {
	plants: {
		trees: [
			"California Box Elder",
			"White Alder",
			"Cypress",
			"Scrub Oak"
		],
		shrubs: [
			"Sagebrush",
			"Manzanita",
			"Chamise",
			"Copper Leaf"
		],
		flowers: [
			"Sand Verbena",
			"Yarrow",
			"Mountain Dandelion",
			"Snapdragon",
			"Milkweed",
			"Morning Glory"
		]
	},
	animals: {
		birds: [
			"Wren",
			"Kestrel",
			"Hawk",
			"Hummingbird",
			"Quail"
		],
		small_mammals: [
			"Squirrel",
			"Rabbit",
			"Bat",
			"Mouse",
			"Gopher"
		],
		medium_mammals: [
			"Raccoon",
			"Bobcat",
			"Coyote"
		],
		large_mammals: [
			"Deer",
			"Mountain Lion",
			"Bear"
		]
	}
}

p chaparral[:plants][:flowers]
p chaparral[:animals][:large_mammals][2] = "Grizzly Bear"
p chaparral[:plants][:shrubs].push("poison oak")
p chaparral[:plants][:shrubs][4].upcase!