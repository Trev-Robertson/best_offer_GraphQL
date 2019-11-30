# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialty.destroy_all
User.destroy_all

trevahr = User.create(name: "Trevahr", phone_number: "+13012567282", password: "123", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
renee = User.create(name: "Renee", phone_number: nil, password: "r", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
sam = User.create(name: "Sam", phone_number: nil, password: "s", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
trevor = User.create(name: "Trevor", phone_number: nil, password: "t", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
luke = User.create(name: "Luke", phone_number: nil, password: "l", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
chine = User.create(name: "Chine", phone_number: nil, password: "c", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")



# trevahr = User.create(name: "Trevahr", phone_number: "+13012567282", img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
# renee = User.create(name: "Renee", phone_number: nil, img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
# sam = User.create(name: "Sam", phone_number: nil, img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
# luke = User.create(name: "Luke", phone_number: nil, img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
# chine = User.create(name: "Chine", phone_number: nil, img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")
# trevor = User.create(name: "Trevor", phone_number: nil, img_url: "https://randomuser.me/api/portraits/#{["women", "men"].sample}/#{rand(1..99)}.jpg")



gardening = Specialty.create(name: "gardening")
carpentry = Specialty.create(name: "carpentry")
plumbing = Specialty.create(name: "plumbing")
technology = Specialty.create(name: "technology")
electrician = Specialty.create(name: "electrician")