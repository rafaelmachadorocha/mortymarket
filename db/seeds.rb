# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Exchange.destroy_all
Morty.destroy_all
Rick.destroy_all

puts 'Creating Ricks and Morties...'

r1 = Rick.create!(email: 'simplerick@rickandmorty.com', password: '123123', username: 'Simple Rick',
                  bio: 'Simple Rick sports a light blue colored collared shirt and dark blue pants, reminiscent of the Rick from Ricks flashback in "The Rickshank Rickdemption", but different from him, as his shirt is a lighter tone of blue.')
r2 = Rick.create!(email: 'doofusrick@rickandmorty.com', password: '123123', username: 'Doofus Rick',
                  bio: 'Doofus Rick never married and never had any children, so his Morty was assigned to him from another reality where everyone looks like Eric Stoltz from the movie Mask.')
r3 = Rick.create!(email: 'picklerick@rickandmorty.com', password: '123123', username: 'Pickle Rick',
                  bio: 'In this form, Ricks only functional body parts are his brain, ears, eyes and a mouth. In all other regards, he became an ordinary pickle.')
r4 = Rick.create!(email: 'tinyrick@rickandmorty.com', password: '123123', username: 'Tiny Rick',
                  bio: 'Tiny Rick is initially similar to older Rick, albeit more optimistic and cheerful. His down-to-earth style impresses the other students of the high school and he becomes very popular.')
r5 = Rick.create!(email: 'salesmanrick@rickandmorty.com', password: '123123', username: 'Salesman Rick',
                  bio: 'Salesman Rick appears in the game Pocket Mortys, where he serves as a shopkeeper. Salesman Ricks store is located at the Citadel of Ricks, but it can also be accessed through a players MortyPad')

m1 = Morty.new(price: 100, rarity: 1, title: 'Morty Smith', 
               description: 'Mortimer "Morty" Smith Sr. is one of the two eponymous main protagonists in Rick and Morty. He is the grandson of Rick and is often forced to tag along on his various misadventures.')
m1.seller_rick = r1
m1.save!
m2 = Morty.new(price: 800, rarity: 5, title: 'Evil Morty', 
               description: 'President Morty, colloquially known as "Evil Morty" among fans and the media, as Candidate Morty prior to his election and as Eye Patch Morty while masquerading as a servant of Evil Rick')
m2.seller_rick = r3
m2.save!
m3 = Morty.new(price: 400, rarity: 3, title: 'Glasses Morty', 
               description: 'Glasses Morty is a version of Morty who wears glasses. He attends the Morty Academy, and is close friends with Left-Handed Morty, Lizard Morty, and Slick Morty.')
m3.seller_rick = r3
m3.save!
m4 = Morty.new(price: 300, rarity: 2, title: 'Lizard Morty', 
               description: 'Lizard Morty is a version of Morty fused with a lizard. He went to Morty Academy and befriended Slick, Left-Handed and Glasses Morty.')
m4.seller_rick = r4
m4.save!
m5 = Morty.new(price: 450, rarity: 4, title: 'Mermaid Morty', 
               description: 'This Morty is sometimes thought to be a myth. He sits on rocks and lures fishermen to their doom.')
m5.seller_rick = r4
m5.save!
m6 = Morty.new(price: 350, rarity: 3, title: 'Butterfly Morty', 
               description: 'This Morty failed to become a beautiful butterfly. In fact, he has lost most of his motor skills and can no longer communicate.')
m6.seller_rick = r5
m6.save!
m7 = Morty.new(price: 300, rarity: 2 , title: 'Cowboy Dancer Morty', 
               description: 'Cowboy Dancer Morty was a dancer working at The Creepy Morty who witnessed the fight between Cop Rick and Morty, and Big Morty.')
m7.seller_rick = r5
m7.save!
m8 = Morty.new(price: 650, rarity: 5, title: 'Off The Grid Morty', 
               description: 'This Morty spends most of his time tied to a tree. He believes the leaves will cleanse the mistakes of his past.')
m8.seller_rick = r5
m8.save!
m9 = Morty.new(price: 500, rarity: 4, title: 'Left-Handed Morty', 
               description: 'Left-Handed Morty, commonly known as Fat Morty, attends the Morty Academy. He is friends with Slick Morty, Glasses Morty, and Lizard Morty.')
m9.seller_rick = r5
m9.save!
m10 = Morty.new(price: 700, rarity: 5, title: 'Slick Morty', 
               description: 'He had a curved hair sticking out, and a scalp line on his right.His sleeves are always rolled in, and he wore dog-tags on his neck. He also had a barcode tattoo on his left side, due to his origins as one of an experimental line of Mortys.')
m10.seller_rick = r5
m10.save!

e = Exchange.new(review: 'Great deal!')
e.morty = m1
e.rick = r2
e.save!

puts 'All Ricks and Morties created!!'
