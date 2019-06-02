# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
User.destroy_all

puts "Creating user: Honza"
User.create(
  first_name: "Jan",
  last_name: "Ranostaj",
  email: "honzaranostaj@gmail.com",
  phone_number: "+420725983522",
  password: "123",
  password_confirmation: "123",
)

puts 'Creating user: John Rambo'
User.create(
  first_name: "John",
  last_name: "Rambo",
  address: "30 Corso Magenta, Milan",
  email: "test@test.com",
  phone_number: "+39320345678",
  password: "123",
  password_confirmation: "123",
  avatar: "https://aa1a5178aef33568e9c4-a77ea51e8d8892c1eb8348eb6b3663f6.ssl.cf5.rackcdn.com/p/full/446f5b44-1ba0-43ac-a8bf-ddd709cc8996.jpg"
)

puts 'Creating user: Timmy'
User.create(
  first_name: "Timmy",
  last_name: "Timmeeei",
  address: "52 Corso Magenta, Milan",
  email: "timmy@gmail.com",
  phone_number: "+39320123456",
  password: "123",
  password_confirmation: "123",
  avatar: ""
)

puts "Users created"
