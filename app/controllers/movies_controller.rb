class MoviesController < ApplicationController 
  def index 
    @user = User.find(params[:user_id])
    @movies = MovieFacade.create_top_movies
  end

  # def search
  #   movie = MovieFacade.new 
  #   @movie = movie.search_by_id(params[:id])
  # end
end