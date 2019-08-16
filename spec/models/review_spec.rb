require 'rails_helper'

describe Review do
  before(:each) do
    product = Product.create({name: "big hat", cost: 12.21, country_of_origin: "United States"})
    product.save!
  end
  after(:each) do
    Product.detroy.all
  end
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
  it { should validate_length_of(:content_body).is_at_least(50) }
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
  it("should create a review") do
    product.reviews.new(author: "Steve", content_body: "This is my jam. Love it. Never without it! Keep 'em coming!", rating: 5)
    product.save
    expect(product.reviews(1).author).to(eq("Steve"))
  end
end
