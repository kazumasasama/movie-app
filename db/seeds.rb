# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 3.times do
#   actor = Actor.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, known_for: Faker::Artist.name})
#   actor.save
# end

# 3.times do
#   actor = Actor.new({first_name: FFaker::NameJA.first_name, last_name: FFaker::NameJA.last_name, known_for: FFaker::Name.name_with_prefix})
#   actor.save
# end

# year = 2000
# 3.times do
#   actor = Movie.new({title: FFaker::Movie.title, year: year, plot: FFaker::Lorem.paragraph})
#   actor.save
#   year += 1
# end


# g = Genre.new(name: "Action")
# g.save
# g = Genre.new(name: "Comedy")
# g.save
# g = Genre.new(name: "Drama")
# g.save
# g = Genre.new(name: "Fantasy")
# g.save
# g = Genre.new(name: "Horror")
# g.save

# m = Movie.new(title: "Galaxy Quest", year: 1999, plot: "The cast of an old 1980s space-adventure television series, Galaxy Quest, spend most of their days attending fan conventions and making promotional appearances. Though the series' conceited former star, Jason Nesmith, thrives on the attention, the other cast members—Gwen, Alexander, Fred, and Tommy—resent him and, to varying degrees, the states of their careers.", director: "Dean Parisot", english: true)
# m.save
# m = Movie.new(title: "Tremors", year: 1990, plot: "Valentine \"Val\" McKee and Earl Bassett are handymen working in Perfection, Nevada, an isolated settlement in the high desert east of the Sierra Nevada mountains. They eventually get tired of their jobs and leave for Bixby, the nearest town. As they leave, they discover the dead body of Edgar Deems, a fellow resident, perched atop an electrical tower, still grasping the tower's crossbeams and his rifle. Jim Wallace, the town's doctor, determines that Edgar died of dehydration, apparently having been too afraid to climb down.", director: "Ron Underwood", english: true)
# m.save
# m = Movie.new(title: "The Butterfly Effect", year: 2004, plot: "Growing up, Evan Treborn and his friends, Lenny Kagan and Kayleigh Miller, and Kayleigh's brother Tommy, suffered many severe psychological traumas that frequently caused Evan to blackout. These traumas include being coerced to take part in child pornography by Kayleigh and Tommy's father, George Miller; being nearly strangled to death by his institutionalized father, Jason Treborn, who is then killed in front of him by guards; accidentally killing a mother and her infant daughter while playing with dynamite with his friends; and seeing his dog burned alive by Tommy.", director: "Eric Bress", english: true)
# m.save

mg = MovieGenre.new(genre_id: 4, movie_id: 1)
mg.save
mg = MovieGenre.new(genre_id: 4, movie_id: 4)
mg.save
mg = MovieGenre.new(genre_id: 4, movie_id: 5)
mg.save
mg = MovieGenre.new(genre_id: 3, movie_id: 5)
mg.save
mg = MovieGenre.new(genre_id: 3, movie_id: 6)
mg.save
mg = MovieGenre.new(genre_id: 4, movie_id: 6)
mg.save
mg = MovieGenre.new(genre_id: 4, movie_id: 7)
mg.save
