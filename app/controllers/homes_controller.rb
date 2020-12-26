class HomesController < ApplicationController
  def top
    @details = Detail.where(date: Time.current.all_week)
  end
end
