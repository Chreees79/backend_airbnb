# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin 10.times do
  User.create(email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone_in_e164, description: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end
=end

# 5.times do
#   City.create(name: Faker::Address.city, zip_code: rand(10000...97000).to_s)
# end

# 10.times do
#   Accomodation.create(available_beds: rand(1..5), price: rand(30..75), description: Faker::TvShows::RickAndMorty.quote, has_wifi: [true, false].sample, welcome_message: Faker::Marketing.buzzwords, city: City.all.sample, admin: User.all.sample)
# end

#Faker::Date.forward(days: 23)

5.times do 
  a = Accomodation.all.sample
  Booking.create(start_date: Faker::Date.backward(days: 14), end_date: Faker::Date.forward(days: 23), guest: User.all.sample, admin_id: a.admin_id, acco
modation: a)
end

