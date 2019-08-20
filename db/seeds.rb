# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Announce.destroy_all

users = [
  {
    first_name: "Mike",
    last_name: "Smith",
    localisation: "France",
    email: "smith@gmail.com",
    password: "123456"
    },
  {
    first_name: "Luke",
    last_name: "Kohl",
    localisation: "Germany",
    email: "kohl@gmail.com",
    password: "123456"
    }]

users.each { |user| User.create(user) }

announces = [
  {
    model: "X10",
    brand: "IPhone",
    state: "very good",
    photo: "https://images.samsung.com/is/image/samsung/ph-galaxy-a9-a920-sm-a920fzbdxtc-frontvitalityblue-123095342?$PD_GALLERY_L_JPG$",
    description: "The smartphone in a very good state",
    price_per_day: "10€",
    purchase_year: "2018",
    date_start: "18/08/2019",
    date_end: "19/08/2019",
    user_id: User.first.id
    },
  {
    model: "s12",
    brand: "Sumsung",
    state: "very good",
    photo: "https://images.samsung.com/is/image/samsung/ph-galaxy-a9-a920-sm-a920fzbdxtc-frontvitalityblue-123095342?$PD_GALLERY_L_JPG$",
    description: "The smartphone in a very good state",
    price_per_day: "15€",
    purchase_year: "2018",
    date_start: "19/08/2019",
    date_end: "20/08/2019",
    user_id: User.last.id
    }]

announces.each { |announce| Announce.create(announce) }
