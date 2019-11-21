class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :decision, :boolean, default: false
  end
end
