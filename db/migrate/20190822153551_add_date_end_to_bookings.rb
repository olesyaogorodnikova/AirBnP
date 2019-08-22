class AddDateEndToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date_end, :date
  end
end
