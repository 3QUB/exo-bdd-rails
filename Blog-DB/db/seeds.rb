# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |i|
  User.create(:name => Faker::StarWars.character)
end

100.times do |i|
  x = rand(1..10)
  user = User.find(x)
  Post.create(:users_id => user.id, :name => "Trip to #{Faker::StarWars.planet}", :body => Faker::StarWars.quote, :description => Faker::StarWars.wookiee_sentence)
end
