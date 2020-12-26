class DetailsController < ApplicationController
    def index
        @detail = Detail.new
        @details = Detail.all()
        @genres = Genre.all
    end
    
    def create
        @detail = Detail.new(detail_params)
        @detail.save
        redirect_to details_path
    end
    
    def show
    end
    
    def edit
        @detail = Detail.find(params[:id])
        @genres = Genre.all
    end
    
    def update
        @detail = Detail.find(params[:id])
        @detail.update(detail_params)
        redirect_to details_path
    end
    
    def destroy
        @detail = Detail.find(params[:id])
        @detail.destroy
        redirect_to details_path
    end
    
    private
    def detail_params
        params.require(:detail).permit([:date,
        :genre_id,
        :remark,
        :money])
    end
end
