require 'rails_helper'

RSpec.describe MovieService do 
  it "gets data for top rated movies", :vcr do 
    movies = MovieService.get_top_rated
    # require 'pry'; binding.pry 
    expect(movies[0]).to be_a(Hash)
    expect(movies.count).to eq(40)
    expect(movies[0][:title]).to be_a(String)
    expect(movies[0][:vote_average]).to be_a(Float)
    # expect(movies.status).to have_http_status(200)
  end
end