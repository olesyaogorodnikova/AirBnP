class Announce < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  STATE = ["Comme neuf", "Excellent", "Bon état", "Fonctionnel"]
  YEARS = (1999..2019).to_a
  validates :model, presence: true
  validates :brand, presence: true
  validates :state, presence: true, inclusion: { in: STATE }
  validates :description, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true
  validates :purchase_year, inclusion: { in: YEARS }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
