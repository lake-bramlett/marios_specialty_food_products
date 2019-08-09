Product.destroy_all

10.times do |index|
  Product.create!(name: Faker::Commerce.product_name,
                        cost: Faker::Number.decimal(l_digits: 2),
                        country_of_origin: Faker::Address.country)
                        # rand(2..4).times do
                        #   author = Faker::Name.name
                        #   content_body = Faker::Lorem.paragraph(sentence_count: rand(1..5))
                        #   rating = Faker::Number.between(from: 1, to: 10)
                        #   review = Review.new(author: author, content_body: content_body, rating: rating)
                        #   review.save!
                        # end
end

p "Created #{Product.count} products"
