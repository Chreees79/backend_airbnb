# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all
Accomodation.destroy_all
Booking.destroy_all

20.times do
  User.create(email: Faker::Internet.email, phone_number: "+33#{rand(000000000..999999999)}", description: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end
 
10.times do
  City.create(name: Faker::Address.city, zip_code: rand(10000...97000).to_s)
end

50.times do
  Accomodation.create(available_beds: rand(1..5), price: rand(30..75), description: Faker::TvShows::RickAndMorty.quote, has_wifi: [true, false].sample, welcome_message: Faker::Marketing.buzzwords, city: City.all.sample, admin: User.all.sample)
end

a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2019-03-08"), end_date: DateTime.parse("2019-03-12"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2012-08-15"), end_date: DateTime.parse("2012-08-21"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2019-04-01"), end_date: DateTime.parse("2019-04-03"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2019-05-12"), end_date: DateTime.parse("2019-05-16"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2019-06-01"), end_date: DateTime.parse("2019-06-04"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2019-06-10"), end_date: DateTime.parse("2019-06-20"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)

a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2022-09-10"), end_date: DateTime.parse("2022-09-14"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2022-10-10"), end_date: DateTime.parse("2022-10-13"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2023-12-20"), end_date: DateTime.parse("2023-12-28"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2024-03-16"), end_date: DateTime.parse("2024-03-21"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)
a = Accomodation.all.sample
Booking.create(start_date: DateTime.parse("2023-06-17"), end_date: DateTime.parse("2023-06-20"), guest: User.all.sample, admin_id: a.admin_id, accomodation: a)