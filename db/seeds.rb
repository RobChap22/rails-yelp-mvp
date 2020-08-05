puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
50.times do
  Restaurant.create!(
    name: Faker::Hipster.words,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
end
puts "Finished!"
