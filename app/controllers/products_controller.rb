class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: 3)
    render template: "products/show"
  end

  def index
    @products = Product.all
    render template: "products/index"
  end

  def create
    @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    image_url: params[:image_url],
    )
    if @product.save
      render :show
    else
      render json: { message: "you screwed up" }
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.image_url = params[:image_url]
    @product.save
    render :show
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "This product has been deleted" }
  end
end
