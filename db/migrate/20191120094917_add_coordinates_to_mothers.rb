class AddCoordinatesToMothers < ActiveRecord::Migration[5.2]
  def change
    add_column :mothers, :latitude, :float
    add_column :mothers, :longitude, :float
  end
end
