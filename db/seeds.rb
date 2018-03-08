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
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520519907/1004408_10201404428340492_323452453_n.jpg"
  })

User.create!({
  first_name: "Heroku",
  last_name: "Master",
  email: "heroku@verizon.net",
  password: "123456",
  photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520520004/10397836_10203119119130715_7638003944117998507_n.jpg"
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
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446746/street-art-kobra.jpg")
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")

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
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520503024/22684875.jpg")
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501662/vhils-1.jpg")
walk2.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501800/vhills_alcantera-770x429.jpg")

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
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501925/bordalo-1.jpg")
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501920/bordalo-4.jpg")
walk3.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520501923/bordalo-2.jpg")

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
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520335705/hugo-sousa-383214-unsplash.jpg")
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk4.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk5 = Walk.create!({
  name: "Alcantara delights",
  location: "Lisbon",
  address: "Alcantara",
  description: "
The old port district of Alcântara got a face-lift in the 1990s, and since then it has been a nightlife hub, as well as a great place to relax by the river on warm days. The inauguration in 2008 of the Museu do Oriente was a regeneration landmark, and the colorful LX Factory has transformed a derelict industrial site into a creative hub of coworking spaces, café-bars, and boutiques, while the revamped docks are now home to smart bars and restaurants.

  ",
  category: Category.last,
  duration: 45,
  category: Category.all.sample,
  duration: 22,
  user: User.all.sample
  })
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520335697/z-klein-326375-unsplash.jpg")
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk5.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


walk6 = Walk.create!({
  name: "Castelo de São Jorge",
  location: "Lisbon",
  address: "R. do Espírito Santo, 1100-129 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 27,
  user: User.all.sample
  })
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520457690/maarten-van-den-heuvel-63257-unsplash.jpg")
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446738/street-art-licuado.jpg")
walk6.walk_attachments.create!(photo: "http://res.cloudinary.com/geebabygee/image/upload/v1520446742/street-art-steep.jpg")


# Walk.create!({
#   name: "Padrão dos Descobrimentos",
#   location: "Lisbon",
#   address: "Av. Brasília, 1400-038 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Jerónimos Monastery",
#   location: "Lisbon",
#   address: "Praça do Império 1400-206 Lisboa, 1400-206 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Palácio Nacional da Ajuda",
#   location: "Lisbon",
#   address: "Largo Ajuda 1349-021, Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 45,
#   user: User.all.sample
#   })

# Walk.create!({
#   name: "Jardim Botânico d'Ajuda",
#   location: "Lisbon",
#   address: "Calçada Ajuda, 1300-011 Lisboa",
#   description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
#   ",
#   category: Category.all.sample,
#   duration: 120,
#   user: User.all.sample
#   })

Review.create!({
  content: "Amazing place! You guys rock!!!",
  walk: Walk.first,
  user: User.all.sample
  })

Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.first,
  user: User.all.sample
  })

Review.create!({
  content: "OMG! Walkie, you changed my life!",
  walk: Walk.all.sample,
  user: User.all.sample
  })

Review.create!({
  content: "I found 20 euros on the street on this walk!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "An unforgettabe experience",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "I didn't even know this part of the city existed!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "An unforgettabe experience",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "What a walk! The best weekend!",
  walk: Walk.all.sample,
  user: User.all.sample
  })
Review.create!({
  content: "I didn't even know this part of the city existed!",
  walk: Walk.all.sample,
  user: User.all.sample
  })


Point.create!({
  name: "Marvila Library",
  latitude: 38.740388,
  longitude: -9.109299,
  description: "Marvila Library is a good starting point of the graffitti walk",
  order: 1,
  walk: Walk.first
  })
Point.create!({
  name: "Rua Alberto Jose Pessoa",
  latitude: 38.741509,
  longitude: -9.108027,
  description: "The street has many graffitti murals",
  order: 2,
  walk: Walk.first
  })
Point.create!({
  name: "Rua Eduarda Lapa",
  latitude: 38.7415465,
  longitude: -9.10863,
  description: "The second main street full of street art murals",
  order: 3,
  walk: Walk.first
  })
Point.create!({
  name: "Bairro da Quinta do Chale",
  latitude: 38.743362,
  longitude: -9.107827,
  description: "The coolest street murals are hidden away on these streets",
  order: 4,
  walk: Walk.first
  })
Point.create!({
  name: "Rua do Patrocinio",
  latitude: 38.743538,
  longitude: -9.107635,
  description: "More amazing art murals here",
  order: 5,
  walk: Walk.first
  })
Point.create!({
  name: "Dois Corvos",
  latitude: 38.738008,
  longitude: -9.105526,
  description: "Enjoy some cool graffiti whilst trying out some amazing beers in this Craft Beer Brewery",
  order: 6,
  walk: Walk.first
  })
Point.create!({
  name: "Fabrica do Braca de Prata",
  latitude: 38.743791,
  longitude: -9.101242,
  description: "The last stop on the tour, a place full of many cool different spaces, a library, alternative craft shops and lively at night with concerts",
  order: 7,
  walk: Walk.first
  })

p "finished seeding"
