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
puts "creating"

Walk.create!({
  name: "Santo Antonio church",
  location: "Lisbon",
  address: "Largo de Santo Antonio da Se, 1100-401 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: "Historical",
  remote_photo_url: "http://res.cloudinary.com/jsm68/image/upload/v1520260512/carmen-penaranda-411970-unsplash.jpg",
  user_id: User.all.sample.id
  })

Walk.create!({
  name: "Sé de Lisboa",
  location: "Lisbon",
  address: "Largo da Sé, 1100-585 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: "Historical",
  remote_photo_url: "http://res.cloudinary.com/jsm68/image/upload/v1520260499/alexander-watts-66219-unsplash.jpg",
  user_id: User.all.sample.id
  })

Walk.create!({
  name: "Church of Nossa Senhora da Conceição Velha",
  location: "Lisbon",
  address: "Rua da Alfândega 108, 1100-016 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: "Historical",
  remote_photo_url: "http://res.cloudinary.com/jsm68/image/upload/v1520260534/michael-d-beckwith-579320-unsplash.jpg",
  user_id: User.all.sample.id
  })

Walk.create!({
  name: "Praça do Comércio",
  location: "Lisbon",
  address: "Praça do Comércio, 1100-148 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: "Historical",
  remote_photo_url: "http://res.cloudinary.com/jsm68/image/upload/v1520260739/1200px-Lisbon_main_square__36622604910.jpg",
  user_id: User.all.sample.id
  })

Walk.create!({
  name: "Arco do Castelo",
  location: "Lisbon",
  address: "R. de Santa Cruz do Castelo 10, 1100-078 Lisboa",
  description: "pare ribs ham boudin ham hock, pork loin drumstick ball tip pork capicola buffalo tail ground round short ribs t-bone filet mignon. Tenderloin shank sausage beef bresaola filet mignon pastrami cow. Jowl ground round short ribs capicola jerky. Meatball bresaola tail, meatloaf cupim pork chop pork belly boudin kielbasa pork loin capicola venison chicken leberkas brisket. Drumstick t-bone filet mignon beef ribs kevin pastrami. Short loin venison salami jowl meatball.
  ",
  category: "Historical",
  remote_photo_url: "http://res.cloudinary.com/jsm68/image/upload/v1520260575/mike-wilson-195744-unsplash.jpg",
  user_id: User.all.sample.id
  })
