class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  private
  def review_params
    params.require(:product).permit(:author, :content_body, :rating)
  end
end
