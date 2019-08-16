class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_product)

  scope :most_reviews, -> (limit) { select("* FROM products, count(reviews.id) as reviews_count").join(:reviews).order("reviews_count DESC").limit(limit) }
  scope :most_recent, -> (limit) { order(created_at: :desc).limit(limit) }
  scope :by_country, -> (country) { where(country_of_origin: country) }
  
  private
  def titleize_product
    self.name = self.name.titleize
  end
end
