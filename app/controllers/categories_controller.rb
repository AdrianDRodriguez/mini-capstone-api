class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render template: "categories/index"
  end
end
