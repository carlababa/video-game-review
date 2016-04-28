print "Seeding categories..."

Category.create([
  {name: "PC Games"},
  {name: "Xbox Games"},
  {name: "Playstation Games"},
  {name: "Board games"}
  ])

puts "seeded #{Category.count} categories!"
