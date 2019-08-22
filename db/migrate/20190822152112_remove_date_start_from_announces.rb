class RemoveDateStartFromAnnounces < ActiveRecord::Migration[5.2]
  def change
    remove_column :announces, :date_start, :date
  end
end
