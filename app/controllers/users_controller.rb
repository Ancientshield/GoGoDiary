class UsersController < ApplicationController
  def index
  end

  def ajax
    # @location_x = params[:lat]
    # @location_y = params[:lng]

    #@locations = Location.new(lat: params[:lat], lng: params[:lng])
    #@locations.save!

    @diaries = Diary.new(location: diary_params[:location], diary_date: '2019-06-03 00:00:00')
    @diaries.user = current_user
    #byebug
    @diaries.save!
  end

  def diary_params
    params.permit(location: {})
  end
end