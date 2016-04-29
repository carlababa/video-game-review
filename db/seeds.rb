print "Seeding categories..."


pc_games = Category.create(name: "PC Games")
xbox_games = Category.create(name: "Xbox Games")
playstation_games = Category.create(name: "Playstation Games")
board_games = Category.create(name: "Board games")


puts "seeded #{Category.count} categories!"

print "Seeding some games..."

Game.create(title: "Pong", category: pc_games)
Game.create(title: "Commandos", category: pc_games)
Game.create(title: "Settlers", category: pc_games)

Game.create(title: "Splinter Cell", category: xbox_games)
Game.create(title: "Mortal Combat", category: playstation_games)

Game.create(title: "Risk", category: board_games)

puts "seeded #{Game.count} games!"


Review.create(game_id:1 ,rating:10 ,title:"EPIC!", description:"Great Classicer, I liked this game already before everybody knew this one" )
Review.create(game_id:1 ,rating:1 ,title:"I paid money for this?", description:"Two bars and a pixel? $19,99??? What kind of sorcery is this?" )
Review.create(game_id:1 ,rating:5.5 ,title:"Just your average game", description:"I also don't know the hype about this mario game or something like that..." )
Review.create(game_id:2 ,rating:6 ,title:"Was ok...", description:"Was ok" )
Review.create(game_id:2 ,rating:8 ,title:"Great!", description:"Classic shooter!" )
Review.create(game_id:3 ,rating:7 ,title:"Well... luckily it was on sale", description:"-" )
Review.create(game_id:4 ,rating:8 ,title:"w0wz!", description:"such nice, great value" )
Review.create(game_id:5 ,rating:8 ,title:"Epic Shooter", description:"Wowww love the special effects" )
Review.create(game_id:5 ,rating:7 ,title:"Super!", description:"Great value for money" )
Review.create(game_id:6 ,rating:5 ,title:"ZzzzZZZzzzzz", description:"A Snorlax is in the way" )
Review.create(game_id:6 ,rating:2 ,title:"Boooo!", description:"Played for 5 minutes then fell asleep" )

puts "seeded #{Review.count} reviews!"
