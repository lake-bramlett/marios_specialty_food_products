class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_product)

  def self.most_reviews
    select("* FROM products, count(reviews.id) as reviews_count")
    .join(:reviews)
    .order("reviews_count DESC")
    .limit(1)
  end

  def self.by_country
    where(country_of_origin: "United States")
  end

  def self.most_recent
    order(created_at: :desc).limit(3)
  end

  private
  def titleize_product
    self.name = self.name.titleize
  end
end
