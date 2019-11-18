class CreateMothers < ActiveRecord::Migration[5.2]
  def change
    create_table :mothers do |t|
      t.string :name
      t.integer :age
      t.string :location
      t.integer :price
      t.text :description
      t.string :hobbies

      t.timestamps
    end
  end
end
