class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
    @movie = Movie.order(:year)
  end

  def create
    @movie = Movie.new(name: params[:movie][:name],
                       year: params[:movie][:year],
                       synopsis: params[:movie][:synopsis])
    if @movie.save
      flash[:notice] = "Movie added successfully!"
      redirect_to root_path
    else
      @movie.errors
      render :new
    end
  end

end
