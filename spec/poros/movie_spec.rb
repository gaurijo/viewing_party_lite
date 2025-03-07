require 'rails_helper'

RSpec.describe Movie do 
  it "exists and attributes" do 
    data = {
        "adult": false,
        "backdrop_path": "/90ez6ArvpO8bvpyIngBuwXOqJm5.jpg",
        "genre_ids": [
          35,
          18,
          10749
        ],
        "id": 19404,
        "original_language": "hi",
        "original_title": "दिलवाले दुल्हनिया ले जायेंगे",
        "overview": "Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.",
        "popularity": 46.23,
        "poster_path": "/2CAL2433ZeIihfX1Hb2139CX0pW.jpg",
        "release_date": "1995-10-19",
        "title": "Dilwale Dulhania Le Jayenge",
        "video": false,
        "vote_average": 8.7,
        "vote_count": 3778
      }
    movie = Movie.new(data)
    expect(movie).to be_a(Movie)
    expect(movie.title).to eq("Dilwale Dulhania Le Jayenge")
    expect(movie.vote_average).to eq(8.7)
  end
end