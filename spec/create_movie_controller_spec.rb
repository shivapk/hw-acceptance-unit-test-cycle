require 'rails_helper'

describe MoviesController, type: :controller do
    describe "#newmovie" do
        context "When I create a movie" do
            it "should create it to database" do
                new_movie = Hash.new
                new_movie["title"] = "Movie1"
                new_movie["rating"] = "R"
                new_movie["release_date"] = Date.new(2014, 2, 6)
                new_movie["director"] = "Director1"
                post :create, movie: new_movie
                expect(response).to redirect_to("/movies")
            end
        end
    end
end