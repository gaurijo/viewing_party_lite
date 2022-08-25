  class MovieFacade
    def self.create_top_movies  
      movies = MovieService.get_top_rated
      movies[0..39].map do |movie|
        Movie.new(movie)
      end
    end

    # def self.search_by_id(id)
    #   movies = MovieService.search_by_id(id)
    # end
  end