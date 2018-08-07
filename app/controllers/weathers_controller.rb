class WeathersController < ApplicationController
  def show
    weather = Weather.new
    @api_weather = weather.getWeather
  end
end
