
puts " Seed begin........."

Mother.destroy_all
User.destroy_all

user= User.create({
  email: "toto@lewagon.org",
  name: "toto",
  password: "123456"
})


mother_a = Mother.create({
  name: "Natalie Portman",
  age: 38,
  location: "Paris" ,
  price: 100,
  description: " Sera le cloux de votre soirée",
  hobbies: " Cinéma"
})

file = URI.open('http://www.leparisien.fr/resizer/lc99dPxXN5x_S4jgNQQ75j6U4GI=/932x582/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/PDLIKPTTQOKP5WS7YQ5NZP3QXA.jpg')
mother_a.photos.attach(io: file, filename: 'nathalie.jpg', content_type: 'image/jpg')
mother_a.user = user
mother_a.save

mother_b = Mother.new({
  name: " Tatie Danièle" ,
  age: 75 ,
  location: "Paris" ,
  price:  10,
  description:  "plus agréable, tu meurs",
  hobbies: 'couture',
})

file = URI.open('https://s.yimg.com/ny/api/res/1.2/1xLGTIeBQbWpsN1AY.IKlQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/fr_FR/News/TeleLoisirs/34167-tatie-danielle-repliques-cultes-videos.jpeg')
mother_b.photos.attach(io: file, filename: 'daniele.jpg', content_type: 'image/jpg')
mother_b.user = user
mother_b.save

mother_c =Mother.new({
  name:  "Geneviève de Fontenay",
  age:  "80",
  location:  "Paris",
  price: 275 ,
  description: " Vous jugera sur votre look forcément" ,
  hobbies: "Couture" ,
})

file = URI.open('https://media3.woopic.com/api/v1/images/661%2Fmagic-article-actu%2Fee7%2F0c3%2F49706b5304f566b9741c1e10e0%2Fgenevieve-de-fontenay-je-ne-suis-pas-homophobe-ni-lesbophobe%7Cee70c349706b5304f566b9741c1e10e0.jpg?format=980x450&facedetect=1&quality=85')
mother_c.photos.attach(io: file, filename: 'genevieve.jpg', content_type: 'image/jpg')
mother_c.user = user
mother_c.save


mother_d = Mother.new({
  name:  "Philippe Etchebest",
  age:  45,
  location: "Paris" ,
  price:  100,
  description: " Euh ?" ,
  hobbies:  "cuisine" ,
})

file = URI.open('http://foodandsens.com/wp-content/uploads/2018/06/Capture-d%E2%80%99%C3%A9cran-2018-06-04-%C3%A0-00.08.15.png')
mother_d.photos.attach(io: file, filename: 'philippe.jpg', content_type: 'image/jpg')
mother_d.user = user
mother_d.save

puts " Seed Done !!"

