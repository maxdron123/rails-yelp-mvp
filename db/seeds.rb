# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all if Rails.env.development?
category = %w[chinese italian japanese french belgian]
6.times do |i|
  puts "Creating #{i} restaurants"
  restaurant =
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number.to_i,
      category: category.sample
    )
  restaurant.save
end
puts 'All done!'
