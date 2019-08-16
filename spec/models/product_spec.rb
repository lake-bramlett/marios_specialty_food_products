require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
  it("titleizes the name of a product") do
    product = Product.create({name: "big hat", cost: 12.21, country_of_origin: "United States"})
    product.save!
    expect(product.name).to(eq("Big Hat"))
  end
end
