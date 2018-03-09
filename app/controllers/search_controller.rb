class SearchController < ApplicationController
  def index
    @search_terms = params[:q]

    @foods = Food.where("food_name LIKE ?", "%#{@search_terms}%")
  end
end
