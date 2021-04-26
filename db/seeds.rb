10.times do 
	food = { [true, false].sample }

	Pupil.create(
	  klass:     Faker::Name.name, 
    name:      Faker::Name.name,
    food:      food,
    presence:  [true, false].sample
    )
end