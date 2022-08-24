
class MoviesController < ApplicationController 
    def index
        conn = Faraday.new(
                url: 'https://api.themoviedb.org',
                params: {param: '1'},
       
        response = conn.get("/3/movie/550?api_key=5d76226ec97b10bfe2fd19f9c5dd418e")
        @movies = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    end
end