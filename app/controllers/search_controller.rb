class SearchController < ApplicationController
  def index
    @search_terms = params[:q]

    @foods = Food.where(food_name: @search_terms)
  end
end
