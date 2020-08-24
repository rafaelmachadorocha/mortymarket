# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exchange.destroy_all
Morty.destroy_all
Rick.destroy_all


m = Morty.new(price: 100, description: 'Good regular Morty', rarity: 2, title: "Pickle Morty")
r = Rick.create!(email: 'teste@teste', password: '123123')
m.rick = r
m.save!
e = Exchange.new(review: 'Great deal!')
e.bought_morty = m
e.rick = r
e.save!
