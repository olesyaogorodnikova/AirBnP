class CreateAnnounces < ActiveRecord::Migration[5.2]
  def change
    create_table :announces do |t|
      t.string :model
      t.string :brand
      t.string :state
      t.string :photo
      t.string :description
      t.integer :price_per_day
      t.integer :purchase_year
      t.date :date_start
      t.date :date_end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
