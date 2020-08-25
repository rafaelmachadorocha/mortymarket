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


m = Morty.new(price: 100, description: 'Good regular Morty', rarity: 2, title: Faker::TvShows::RickAndMorty.unique.character)
r = Rick.create!(email: Faker::Internet.email, password: '123123', username: 'Simple Rick', bio: 'Very simple Rick')
m.seller_rick = r
m.save!
r2 = Rick.create!(email: Faker::Internet.unique.email, password: '123123', username: 'Picle Rick', bio: 'PICLE RIIIIIIIIIIIIIICK!!')
e = Exchange.new(review: 'Great deal!')
e.morty = m
e.rick = r2
e.save!
