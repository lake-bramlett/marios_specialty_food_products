class ProductsController < ApplicationController

  def index
    @products = Product.most_recent
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product= Product.find(params[:id])
      if @product.update(product_params)
        redirect_to products_path
      else
        render :edit
      end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end
end
