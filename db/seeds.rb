# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# restaurants

Restaurant.destroy_all if Rails.env.development?
puts 'All Restaurants destroyed'
Review.destroy_all if Rails.env.development?
puts 'All reviews destroyed'

Restaurant.create!([
  {
    id: 1,
    name: 'the bay',
    address: 'La preuneuse, Tamarin',
    phone_number: '57056065',
    category: 'french'
  },
  {
    id: 2,
    name: 'happy raja',
    address: 'La preuneuse, Tamarin',
    phone_number: '5705655',
    category: 'chinese'
  },
  {
    id: 3,
    name: 'Mine de la bay',
    address: 'La baie, Tamarin',
    phone_number: '57089065',
    category: 'french'
  },
  {
    id: 4,
    name: 'KFC',
    address: 'Coeur de ville, Tamarin',
    phone_number: '57126065',
    category: 'belgian'
  },
  {
    id: 5,
    name: 'mc donald',
    address: 'coeur de ville, Tamarin',
    phone_number: '56056065',
    category: 'belgian'
  },
])

puts '5 restaurants created'

# reviews

(1..5).each do |id|
  Review.create!(
    id: id,
    rating: Random.new.rand(5),
    content: Faker::Restaurant.review ,
    restaurant_id: 1
  )
end

puts '5 Reviews created'

(6..10).each do |id|
  Review.create!(
    id: id,
    rating: Random.new.rand(5),
    content: Faker::Restaurant.review ,
    restaurant_id: 2
  )
end

puts '5 Reviews created'

(11..15).each do |id|
  Review.create!(
    id: id,
    rating: Random.new.rand(5),
    content: Faker::Restaurant.review ,
    restaurant_id: 3
  )
end

puts '5 Reviews created'

(16..20).each do |id|
  Review.create!(
    id: id,
    rating: Random.new.rand(5),
    content: Faker::Restaurant.review ,
    restaurant_id: 4
  )
end

puts '5 Reviews created'

(21..25).each do |id|
  Review.create!(
    id: id,
    rating: Random.new.rand(5),
    content: Faker::Restaurant.review ,
    restaurant_id: 5
  )
end

puts '5 Reviews created'
