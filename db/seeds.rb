Product.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.dish, cost: Faker::Number.decimal(l_digits: 2), country_of_origin: Faker::Address.country)
  rand(2..6).times do
    product.reviews.new(author: Faker::TvShows::Simpsons.character, content_body: Faker::TvShows::Simpsons.quote, rating: rand(1..5))
    product.save
  end
end

p "Created #{Product.count} products and #{Review.count} reviews"
