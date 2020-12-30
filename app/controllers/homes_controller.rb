class HomesController < ApplicationController
  def top
    @details = Detail.where(date: Time.current.all_week)
    @detail_total = @details.sum(:money)
    @genres = Genre.all
  end
end
