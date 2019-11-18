
puts " Seed begin........."

User.destroy_all
Mother.destroy_all

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

mother_d.user = user
mother_d.save

puts " Seed Done !!"
