class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_product)

  scope :most_reviews, -> {(
    select("products.id, count(reviews.id) as review_count")
    .join(:reviews)
    .group("products.id")
    .order("review_count DESC")
    .limit(1)
    )}

  private
  def titleize_product
    self.name = self.name.titleize
  end
end
