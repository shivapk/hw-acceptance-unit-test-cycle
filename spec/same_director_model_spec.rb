require 'rails_helper'

describe Movie, '.movies_with_same_director' do
    it 'finds movies with the same director' do
        movie_1 = Movie.create(:title => "Movie1", :director => "Director1")
        movie_2 = Movie.create(:title => "Movie2", :director => "Director1")
        
        result = movie_1.movies_with_same_director

        expect(result).to include("Movie2")
    end
    
    it 'does not find movies with different directors' do
        movie_1 = Movie.create(:title => "Movie3", :director => "Director1")
        movie_2 = Movie.create(:title => "Movie4", :director => "Director2")
        
        result = movie_1.movies_with_same_director
        
        expect(result).not_to include("Movie4")
    end
end