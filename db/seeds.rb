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

3.times do
  actor = Actor.new({first_name: FFaker::NameJA.first_name, last_name: FFaker::NameJA.last_name, known_for: FFaker::Name.name_with_prefix})
  actor.save
end