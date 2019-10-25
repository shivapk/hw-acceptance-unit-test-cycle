require 'rails_helper'

describe MoviesController, type: :controller do
    context 'when movie has director' do
        it 'renders same director page' do
            movie_1 = Movie.create(:title => "Movie1", :director => "Director1")
            movie_2 = Movie.create(:title => "Movie2", :director => "Director1")
            
            get :same_director, :id => movie_1
            
            expect(response).to render_template("same_director")
        end
    end
    
    context 'when movie has no director' do
        it 'renders index page' do
            movie_1 = Movie.create(:title => "Movie1")
            expect(movie_1.new_record?).to eq(false)
            get :same_director, :id => movie_1
            
            expect(response).to redirect_to('/movies')
            expect(flash[:notice]).to eq("\'Movie1\' has no director info")
        end
        
    end
end