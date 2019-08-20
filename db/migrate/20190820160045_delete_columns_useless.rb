class DeleteColumnsUseless < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :date
    remove_column :bookings, :status
  end
end
