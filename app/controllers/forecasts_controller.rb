class ForecastsController < ApplicationController
  def show
    forecast = Forecast.new
    @new_forecast = forecast.get_forecast
  end
end
