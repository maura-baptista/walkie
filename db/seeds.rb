# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all data"
Walk.destroy_all
User.destroy_all
Category.destroy_all
puts "creating"



User.create!({
  first_name: "Joe",
  last_name: "Monteiro",
  email: "joemonteiro@verizon.net",
  password: "123456",
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
  name: "Alternative Walks",
  })
Category.create!({
  name: "Family Walks",
  })
Category.create!({
  name: "Cultural Walks",
  })

Walk.create!({
  name: "Santo Antonio church",
  location: "Lisbon",
  address: "Largo de Santo Antonio da Se, 1100-401 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample ,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520260512/carmen-penaranda-411970-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Sé de Lisboa",
  location: "Lisbon",
  address: "Largo da Sé, 1100-585 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520260499/alexander-watts-66219-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Church of Nossa Senhora da Conceição Velha",
  location: "Lisbon",
  address: "Rua da Alfândega 108, 1100-016 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520260534/michael-d-beckwith-579320-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Praça do Comércio",
  location: "Lisbon",
  address: "Praça do Comércio, 1100-148 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520260739/1200px-Lisbon_main_square__36622604910.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Arco do Castelo",
  location: "Lisbon",
  address: "R. de Santa Cruz do Castelo 10, 1100-078 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520260575/mike-wilson-195744-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Castelo de São Jorge",
  location: "Lisbon",
  address: "R. do Espírito Santo, 1100-129 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520264635/lorenzo-castagnone-445302-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Padrão dos Descobrimentos",
  location: "Lisbon",
  address: "Av. Brasília, 1400-038 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520265618/1200px-Belem-3__34224859085.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Jerónimos Monastery",
  location: "Lisbon",
  address: "Praça do Império 1400-206 Lisboa, 1400-206 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520267217/1200px-View_from_the_Cloisters_in_the_Jer%C3%B3nimos_Monastery.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Palácio Nacional da Ajuda",
  location: "Lisbon",
  address: "Largo Ajuda 1349-021, Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 45,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520267595/lin-yu-xin-43864-unsplash.jpg",
  user: User.all.sample
  })

Walk.create!({
  name: "Jardim Botânico d'Ajuda",
  location: "Lisbon",
  address: "Calçada Ajuda, 1300-011 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: Category.all.sample,
  duration: 120,
  photo: "http://res.cloudinary.com/jsm68/image/upload/v1520269598/paul-van-bloem-235179-unsplash.jpg",
  user: User.all.sample
  })

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
  name: "Rua Alberto Lapa",
  latitude: 38.605469,
  longitude: -9.164683,
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
  latitude: -23.193244,
  longitude: -46.877030,
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
