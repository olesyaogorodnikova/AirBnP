class AddDateStartToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date_start, :date
  end
end
