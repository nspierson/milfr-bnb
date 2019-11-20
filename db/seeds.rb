
puts " Seed begin........."

Mother.destroy_all
User.destroy_all
Review.destroy_all

# ----------------- USERS SEEDS ------------------

user= User.create({
  email: "germain@lewagon.org",
  name: "Germain",
  password: "123456"
})
file = URI.open('https://avatars0.githubusercontent.com/u/25386941?s=460&v=4')
user.avatar.attach(io: file, filename: 'Germain.jpg', content_type: 'image/jpg')
user.save

user_b= User.create({
  email: "b.leray35@gmail.com",
  name: "Benjamin",
  password: "123456"
})
file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574172403/seed-milfr/Bs5bYwZiVV1sheJsN9iDvGVP.jpg')
user_b.avatar.attach(io: file, filename: 'Germain.jpg', content_type: 'image/jpg')
user_b.save

# ----------------- Mothers Seeds------------------


mother_b = Mother.new({
  name: " Tatie Danièle" ,
  age: 75 ,
  location: " 16 Villa Gaudelet, 75011 Paris" ,
  price:  30,
  description:  " Belle-mère un peu opressante mais malgré tout, elle a bon fond",
  hobbies: 'couture',
})
file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574244359/seed-milfr/6vKgj8m68s8DNAHyAeFyHzuM.jpg')
mother_b.photos.attach(io: file, filename: 'nathalie.jpg', content_type: 'image/jpg')
mother_b.user = user
mother_b.save

mother_c =Mother.new({
  name:  "Geneviève de Fontenay",
  age:  80,
  location:  " 13 rue Ramus, 75020 Paris",
  price: 275 ,
  description:  " Beaucoup de discussion, souriante, elle accompagnera parfaitement vos repas à la Tour d'Argent !!",
  hobbies: "Couture" ,
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574246817/seed-milfr/2smL37NLsjL1PgrdcQfRA9LW.jpg')
mother_c.photos.attach(io: file, filename: 'genevieve.jpg', content_type: 'image/jpg')
mother_c.user = user
mother_c.save

mother_a = Mother.create({
  name: "Nathou",
  age: 38,
  location: "Paris" ,
  price: 400,
  description: " Jeune belle-mère, encore novice, néanmoins son métier fait qu'elle s'adaptera à toutes les situations. Souriante, agréable et avec beaucoup de discussion, elle vous fera oublier votre ancienne belle-mère",
  hobbies: " Cinéma"
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574245999/seed-milfr/oJLxU61fosPMuhGrch1NxBsS.jpg')
mother_a.photos.attach(io: file, filename: 'nathalie.jpg', content_type: 'image/jpg')
mother_a.user = user
mother_a.save

mother_d =Mother.new({
  name: "Funky Nanny",
  age:  80,
  location:  "63 rue du chemin vert, 75011 Paris",
  price: 275 ,
  description:  "Grande fan de teuf, a emmener à Dehors Brut",
  hobbies: "Couture" ,
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574176874/seed-milfr/GnqN48mE2D1tcs4H99HmW4Bm.jpg')
mother_d.photos.attach(io: file, filename: 'nany.jpg', content_type: 'image/jpg')
mother_d.user = user
mother_d.save

mother_e =Mother.new({
  name: " Monique",
  age:  50,
  location:  "10 rue des Vignoles, 75020 Paris",
  price: 110 ,
  description:  "Malgré sa présence à Paris, elle aime beaucoup jardiner, va très bien dans un potager.",
  hobbies: "Couture" ,
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574249740/seed-milfr/pretty-senior-woman_ec1oxq.jpg')
mother_e.photos.attach(io: file, filename: 'monique.jpg', content_type: 'image/jpg')
mother_e.user = user
mother_e.save


mother_f =Mother.new({
  name: "Camille",
  age:  45,
  location:  "11 rue des Archives, 75004 Paris",
  price: 90 ,
  description:  "Malgré sa présence à Paris, elle aime beaucoup jardiner, va très bien dans un potager.",
  hobbies: "Couture" ,
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574249726/seed-milfr/Paula_dunne_xlf1dk.jpg')
mother_f.photos.attach(io: file, filename: 'dune.jpg', content_type: 'image/jpg')
mother_f.user = user
mother_f.save

mother_g =Mother.new({
  name: " Marie-José",
  age:  78,
  location:  "8 rue Belhommme, 75008 Paris",
  price: 130,
  description:  "Prépare de très bon petits plats",
  hobbies: "Motus" ,
})

file = URI.open('https://res.cloudinary.com/dlny73adr/image/upload/v1574250253/seed-milfr/mother_f_nynsma.jpg')
mother_g.photos.attach(io: file, filename: 'marie.jpg', content_type: 'image/jpg')
mother_g.user = user
mother_g.save
# ----------------------------- Reviews --------------------
review_1 = Review.new({
  description: " Passé un week-end à la plage, belle-doche fortement agréable",
  rating: 4 ,
  })
review_1.user = user
review_1.mother = mother_a
review_1.save



puts " Seed Done !!"

