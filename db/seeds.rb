
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

  # new_table "mothers", force: :cascade do |t|
  #   t.string "name"
  #   t.integer "age"
  #   t.string "location"
  #   t.integer "price"
  #   t.text "description"
  #   t.string "hobbies"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.bigint "user_id"
  #   t.index ["user_id"], name: "index_mothers_on_user_id"
  # end







  # create_table "users", force: :cascade do |t|
  #   t.string "email", default: "", null: false
  #   t.string "encrypted_password", default: "", null: false
  #   t.string "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string "name"
  #   t.index ["email"], name: "index_users_on_email", unique: true
  #   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
