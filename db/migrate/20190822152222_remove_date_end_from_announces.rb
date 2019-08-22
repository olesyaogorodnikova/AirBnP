class RemoveDateEndFromAnnounces < ActiveRecord::Migration[5.2]
  def change
    remove_column :announces, :date_end, :date
  end
end
