# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|
  User.create(:name => Faker::Pokemon.name)
end

50.times do |i|
  x = rand(1..10)
  user = User.find(x)
  Link.create(title: Faker::Pokemon.location, url: Faker::Internet.domain_name, user_id: user.id)
end

150.times do |i|
  x = rand(1..10)
  user = User.find(x)
  y = rand(1..50)
  link = Link.find(y)
  if i > 2 && y%2 == 0
   k = i-1
   Comment.create(body: Faker::ChuckNorris.fact, user_id: user.id, link_id: link.id, parent_id: k)
  else
    Comment.create(body: Faker::ChuckNorris.fact, user_id: user.id, link_id: link.id)
  end
end