class ProductsController < ApplicationController
  def first
    render json: { message: "hello" }
  end
end
