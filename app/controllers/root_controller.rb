class RootController < ApplicationController
  def index
    @movie = Movie.order(:year).reverse_order
  end
end