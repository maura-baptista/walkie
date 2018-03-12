# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all data"
WalkAttachment.destroy_all
Walk.destroy_all
User.destroy_all
Category.destroy_all
puts "creating"


User.create!({
  first_name: "Joe",
  last_name: "Monteiro",
  email: "joemonteiro@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520520397/20258116_104215333594155_8026645643865689250_n.jpg"
  })

User.create!({
  first_name: "Francisco",
  last_name: "Barreto",
  email: "barrrr@sweetpeachyboy.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520518949/26733717_471026946626212_2213751371031631593_n.jpg"
  })

User.create!({
  first_name: "Maria",
  last_name: "Castro",
  email: "maria@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520519876/14572838_10209041836381309_6064047794073558588_n.jpg"
  })

User.create!({
  first_name: "Cisco",
  last_name: "Azeveado",
  email: "cisco@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520546130/29540270.jpg"
  })

User.create!({
  first_name: "Heroku",
  last_name: "Master",
  email: "heroku@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520546128/20076484.jpg"
  })

User.create!({
  first_name: "Manel",
  last_name: "Manel",
  email: "manelo@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520519728/11253888_10207694698942379_8476170414381940837_n.jpg"
  })


Category.create!({
  name: "Alternative Walks",
  })
Category.create!({
  name: "Green Walks",
  })
Category.create!({
  name: "Historical Walks",
  })
Category.create!({
  name: "Seaside Walks",
  })
Category.create!({
  name: "Family Walks",
  })
Category.create!({
  name: "Cultural Walks",
  })

walk = Walk.create!({
  name: "Marvila Street Art Walk",
  location: "Lisbon",
  address: "Marvila",
  description: "These days, cities are covered in good graffiti and bad graffiti, and Lisbon is one that has more than its fair share of the good variety. The themes are multifaceted, covering the country’s history, pop culture, and imaginative abstracts.
  ",
  category: Category.first ,
  duration: 35,
  user: User.all.sample
  })
walk.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446746/street-art-kobra.jpg")
walk.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")

walk2 = Walk.create!({
  name: "Vhils Walk",
  location: "Lisbon",
  address: "Graca",
  description: "Vhils’s art is poetic, complex, and ambitious. He penetrates through countless layers of posters, dirt, and plaster to set free the poetic images hidden beneath urban spaces. This is all done by drilling away old plaster relief forms.
  ",
  category: Category.first ,
  duration: 25,
  user: User.all.sample
  })
walk2.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520503024/22684875.jpg")
walk2.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520501662/vhils-1.jpg")
walk2.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520501800/vhills_alcantera-770x429.jpg")

walk3 = Walk.create!({
  name: "Bordallo II and Trash Art Walk",
  location: "Lisbon",
  address: "Lisbon",
  description: "Bordalo belongs to a generation that is extremely consumerist, materialist and greedy. With the production of things at its highest, the production of waste and unused objects is also at its highest. Waste is quoted because of its abstract definition: one man's trash is another man's treasure. He creates, recreates, assembles and develops ideas with end-of-life material and tries to relate it to sustainability, ecological and social awareness.


  ",
  category: Category.first ,
  duration: 45,
  user: User.all.sample
  })
walk3.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520501925/bordalo-1.jpg")
walk3.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520501920/bordalo-4.jpg")
walk3.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520501923/bordalo-2.jpg")

walk4 = Walk.create!({
  name: "Old city tales",
  location: "Lisbon",
  address: "Alfama",
  description: "Cobbled lanes, centuries-old houses, hole-in-the-wall restaurants and famous landmarks await you on this 2.5-hour walking tour of Lisbon’s enigmatic Alfama neighborhood. Explore the hilly district with a professional guide and revel in the village atmosphere as you wander down Alfama’s steep streets.
  ",
  category: Category.last,
  duration: 30,

  user: User.all.sample
  })
walk4.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520335705/hugo-sousa-383214-unsplash.jpg")
walk4.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk4.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk5 = Walk.create!({
  name: "Alcantara delights",
  location: "Lisbon",
  address: "Alcantara",
  description: "
The old port district of Alcântara got a face-lift in the 1990s, and since then it has been a nightlife hub, as well as a great place to relax by the river on warm days. The inauguration in 2008 of the Museu do Oriente was a regeneration landmark, and the colorful LX Factory has transformed a derelict industrial site into a creative hub of coworking spaces, café-bars, and boutiques, while the revamped docks are now home to smart bars and restaurants.

  ",
  duration: 45,
  category: Category.last,
  user: User.all.sample
  })
walk5.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520547187/lx_orig.jpg")
walk5.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk5.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk6 = Walk.create!({
  name: "Along the Tejo",
  location: "Lisbon",
  address: "Tejo coast",
  description: "Lisbon owes its existence to the river which has shaped the city’s destiny and given it its unique character. According to legend, the city was founded by Ulysses (the Roman name for Odysseus) in one of his adventurous journeys.
  ",
  category: Category.fourth,
  duration: 30,
  user: User.all.sample
  })
walk6.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520546003/stock-photo-bridge-bike-lisbon-underbridge-baa0314c-5e4f-4cfa-9783-ec1cabecb713.jpg")
walk6.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk6.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")

walk7 = Walk.create!({
  name: "Forgotten Delights",
  location: "Lisbon",
  address: "Montasanto",
  description: "The Panoramico is a restaurant on a miradouro – which is a lookout – that was constructed almost 50 years ago. At some point, they probably didn’t have any money left, because they stopped the constructions and since then, it has been abandoned. Over the years, it fell into ruin and was more or less forgotten.
  ",
  category: Category.first,
  duration: 30,
  user: User.all.sample
  })
walk7.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520546847/maxresdefault.jpg")
walk7.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk7.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk8 = Walk.create!({
  name: "Montasanto Trail",
  location: "Lisbon",
  address: "Montasanto",
  description: "A lot of trails around the park that will dive you into a very healthy forest with a lot of panoramic views to Lisbon as well as Sintra and the big scale of Monsanto.
It's very nice to have such a vast Nature just next to Lisbon.
  ",
  category: Category.second,
  duration: 50,
  user: User.all.sample
  })
walk8.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520547392/woods-landscape-road-loyalsock-state-forest-163703.jpg")
walk8.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk8.walk_attachments.create!(remote_photo_url: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")



Review.create!({
  content: "Amazing place! I saw so many cool things !",
  walk: Walk.all.sample,
  user: User.all.sample
  })

Review.create!({
  content: "What a walk! The best weekend with Walkie!",
  walk: Walk.all.sample,
  user: User.all.sample
  })

Review.create!({
  content: "OMG! Walkie, you changed my life!",
  walk: Walk.all.sample,
  user: User.all.sample
  })

Review.create!({
  content: "I found 20 euros on the street on this walk!",
  walk: Walk.first,
  user: User.all.sample
  })

Review.create!({
  content: "An unforgettabe experience",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "Nice map guys, didn't get lost at all!",
  walk: Walk.first,
  user: User.all.sample
  })
Review.create!({
  content: "I didn't even know this part of the city existed!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "I'll certainly come back for more walks",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "Wow wow wow, you left me speechless!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "Understood the meaning of life whilst on this walk",
  walk: Walk.first,
  user: User.all.sample
  })
Review.create!({
  content: "The Walkie crew must really know how to make apps. Amazing",
  walk: Walk.first,
  user: User.all.sample
  })


Point.create!({
  name: "Marvila Library",
  latitude: 38.740388,
  longitude: -9.109299,
  description: "Marvila Library is a good starting point of the graffitti walk",
  order: 1,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600631/street-art-zesar-behamonte.jpg"
  })
Point.create!({
  name: "Rua Alberto Jose Pessoa",
  latitude: 38.741509,
  longitude: -9.108027,
  description: "The street has many graffitti murals",
  order: 2,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600629/street-art-god-mess.jpg"
  })
Point.create!({
  name: "Rua Eduarda Lapa",
  latitude: 38.7415465,
  longitude: -9.10863,
  description: "The second main street full of street art murals",
  order: 3,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600627/street-art-miguel-brum_1.jpg"
  })
Point.create!({
  name: "Bairro da Quinta do Chale",
  latitude: 38.743362,
  longitude: -9.107827,
  description: "The coolest street murals are hidden away on these streets",
  order: 4,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600728/968733d3cd63d5a52d22ffc9c042273b_1.jpg"
  })
Point.create!({
  name: "Rua do Patrocinio",
  latitude: 38.743538,
  longitude: -9.107635,
  description: "More amazing art murals here",
  order: 5,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600620/f377c498a1.jpg"
  })
Point.create!({
  name: "Dois Corvos",
  latitude: 38.738008,
  longitude: -9.105526,
  description: "Enjoy some cool graffiti whilst trying out some amazing beers in this Craft Beer Brewery",
  order: 6,
  walk: Walk.first,
 photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520600624/street-art-the-caver.jpg"
  })
Point.create!({
  name: "Fabrica do Braca de Prata",
  latitude: 38.743791,
  longitude: -9.101242,
  description: "The last stop on the tour, a place full of many cool different spaces, a library, alternative craft shops and lively at night with concerts",
  order: 7,
  walk: Walk.first,
photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446746/street-art-kobra.jpg"
  })

p "finished seeding"
