wwe_show = {
	in_ring: {
		wrestler_1: 'Shawn Michaels',
		wrestler_2: 'The Undertaker',
		referee: 'Chris Robinson',
		commentators: [
			'Jim Ross', 
			'Jerry Lawler', 
			'Michael Cole'
		]
	},

	audience: {
		max_capacity: 1000,
		attendance: 890,
	},

	backstage: {
		catering: [
			'burgers',
			'green_salad',
			'fruit_salad',
			'protein_bars'
		],
		locker_room: {
			men_capacity: 50,
			women_capacity:35,
		}
	},
	crew: {
		producers: [
			'Triple H',
			'Steph McMahon',
			'Vince McMahon'
				
		],
		cameras: {
			cameramen:[
				'Seth Green',
				'Kevin Dunn',
				"Freddie Prinze"
			],
			total_cameras: 5,
			total_mics: 15,
			total_crew: 100,
		}

	}

}

p wwe_show[:audience][:attendance]
p wwe_show[:crew][:cameras][:cameramen][2]
p wwe_show[:backstage][:catering]
p wwe_show[:crew][:producers][0]
