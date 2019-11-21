class AddColumns2ToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :accept, :boolean, default: false
    add_column :bookings, :done, :boolean, default: false
    add_column :bookings, :comment_to_user, :text
  end
end
