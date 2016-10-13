class WeatherControllerController < ApplicationController

  def index
    @weather = WeatherForecast.for_city(params[:city])
    respond_to do |format|
      format.html
      format.json { render json: @weather }
    end
  end
end
