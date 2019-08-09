Product.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.dish, cost: Faker::Number.decimal(l_digits: 2), country_of_origin: Faker::Address.country)
  rand(1..5).times do
    product.reviews.new(author: Faker::Name.name, content_body: Faker::Lorem.characters(number: rand(50..250)), rating: rand(1..5))
    product.save
  end
end

p "Created #{Product.count} products and #{Review.count} reviews"
