# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed"
Announce.destroy_all

User.destroy_all

User.create!(
    first_name: "Edward",
    last_name: "Norton",
    email: "ed.norton@gmail.com",
    password: "123456"
    )

User.create!(
    first_name: "Luke",
    last_name: "Skywalker",
    email: "skywalker@gmail.com",
    password: "123456"
    )

User.create!(
    first_name: "Dark",
    last_name: "Vador",
    email: "toto@gmail.com",
    password: "123456"
    )

User.create!(
    first_name: "Dark",
    last_name: "Vador",
    email: "owner@gmail.com",
    password: "123456"
    )

User.create!(
    first_name: "Dark",
    last_name: "Vador",
    email: "loueur@gmail.com",
    password: "123456"
)


puts 'a'

a = Announce.new(
    model: "6S",
    brand: "Apple",
    state: "Excellent",
    description: "Téléphone en bon état, quelques petites traces sur l'écran",
    price_per_day: 5,
    purchase_year: 2017,
    user_id: User.all[3].id,
    address: "12 rue Oberkampf 75011 Paris"
    )
a.remote_photo_url = "http://icdn2.digitaltrends.com/image/apple-iphone-6s_7840-1500x1000-1500x1000.jpg"
a.save
puts 'b'

a = Announce.new(
    model: "S4",
    brand: "Samsung",
    state: "Bon état",
    description: "Il fonctionne, la batterie tient encore la charge sur une journée. Fourni avec une coque.",
    price_per_day: 2,
    purchase_year: 2011,
    address: "34 rue de Vaugirard 75015 Paris",
    user_id: User.all[1].id
        )
a.remote_photo_url = "https://cdn.theunlockr.com/wp-content/uploads/2014/04/Flash-Recovery-Samsung-Galaxy-S4-Canadian.jpg"
a.save


 a = Announce.new(
    model: "Lumia 640",
    brand: "Nokia",
    state: "Comme neuf",
    description: "Impeccable, le téléphone a été utilisé deux mois seulement. Toujours protégé par un filtre.",
    price_per_day: 7,
    purchase_year: 2017,
    address: "34 rue de Vaugirard 75015 Paris",
    user_id: User.all[2].id
    )

a.remote_photo_url = "https://pocketnow.com/wp-content/uploads/2015/06/Lumia640_WP_20150601_09_55_08.jpg"
a.save


a = Announce.new(
    model: "8310",
    brand: "Nokia",
    state: "Fonctionnel",
    description: "Indestructible!",
    price_per_day: 1,
    purchase_year: 2002,
    address: "23 rue de la Pompe 75016 Paris",
    user_id: User.all[3].id
    )

a.remote_photo_url = "https://i.ytimg.com/vi/vvAtwsUh0FM/maxresdefault.jpg"
a.save

puts "Seed finished"
