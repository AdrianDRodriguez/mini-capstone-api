class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: 3)
    render template: "products/show"
  end

  def index
    @product = Product.all
    render template: "products/index"
  end

  def create
    @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    image_url: params[:image_url],
    )
    @product.save
    render :show
  end
end
