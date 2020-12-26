class DetailsController < ApplicationController
    def index
        @detail = Detail.new
        @details = Detail.all()
        @genres = Genre.all
    end
    
    def create
        @detail = Detail.new(detail_params)
        @detail.save
        redirect_to 
    end
    
    def show
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    def detail_params
        params.require(:detail).permit([:date,
        :genre_id,
        :remark,
        :money])
    end
end
