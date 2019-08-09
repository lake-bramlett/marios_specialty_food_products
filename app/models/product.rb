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

  def self.most_recent(limit)
    order(created_at: :desc).limit(limit)
  end

  private
  def titleize_product
    self.name = self.name.titleize
  end
end
