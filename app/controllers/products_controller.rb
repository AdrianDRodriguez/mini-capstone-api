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
    @products = Product.new(
      name: "Smart Fitness Watch",
      price: 60,
      description: "A waterproof fitness tracker with heart rate monitoring, GPS, and 10-day battery life. Great for health-conscious users.",
      image_url: "https://mms.businesswire.com/media/20160105005568/en/502608/5/Fitbit_Blaze_Lineup.jpg"
      )
    products.save
    render :show
  end
end
