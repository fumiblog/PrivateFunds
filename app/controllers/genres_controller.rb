class GenresController < ApplicationController
    def index
        @genre = Genre.new
        @genres = Genre.all
        @details = Detail.where(date: Time.current.all_month)
        @detail_total = @details.sum(:money)
        # byebug
    end
    
    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genres_path
    end
    
    def edit
        @genre = Genre.find(params[:id])
    end
    
    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genres_path
    end
    
    def destroy
        @genre = Genre.find(params[:id])
        @genre.delete
        redirect_to genres_path
    end
    
    private
    def genre_params
        params.require(:genre).permit([:name, :budget])
    end
end
