# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RATING = [1, 1.4, 1.8, 2, 2.3, 2.7, 3, 3.6, 3.9, 4, 4.1, 4.8, 5, 5.3, 5.7, 6.3, 6.9, 7.2, 7.5, 7.9, 8, 8.2, 8.5, 8.7, 9, 9.1, 9.4, 9.6, 9.7]
puts "Generates Seeds"
Movie.destroy_all

6.times do
  movies = Movie.new(title: Faker::Movie.title, overview: Faker::Company.catch_phrase, poster_url: Faker::Company.logo, rating: RATING.sample)
  movies.save!
end
