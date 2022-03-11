rails generate model Actor first_name:string last_name:string known_for:string

actor = Actor.new(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")
actor.save

rails g controller actors


rails g controller movies