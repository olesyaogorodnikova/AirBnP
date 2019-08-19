# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 5 fake users...'
5.times do
  user = User.new(
    first_name: Faker::Hipster,
    last_name: Faker::Book.author,
    localisation: Faker::Nation,
    email: "#{Faker::Address.street_address}@#{Faker::Address.city}.com",
    password: Faker::Beer

  )
  user.save!
end


puts 'Creating 10 fake announces...'
10.times do
  announce = Announce.new(
    model:    Faker::Book,
    brand: Faker::Company.name,
    state:  "bon état",
    user_id: rand(0..5)
    # photo:
    # description:
    # price_per_day:
    # purchase_year:
    # date_start:
    # date_end:

  )
  announce.save!
end
puts 'Finished!'
