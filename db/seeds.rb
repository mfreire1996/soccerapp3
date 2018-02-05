# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.create(first_name: "Marcos", last_name: "Freire", position: "Midfielder", favorite_team: "Manchester United", extra_equipment: "Bringing an extra soccer ball", bio: "Looking for some teammates to play with", user_id: 1, pickup_id: 1)
Park.create(name: "Juniper Park", street: "Middle Village", city: "New York", state: "NY", zip: 11379, nets: true, opening_time: "8am", closing_time: "9pm")
Pickup.create(game_time: "5pm", drink_provided: true, creator_id: 1, player_id: 1)
Player_pickup.create(player_id: 2, pickup_id: 2) 