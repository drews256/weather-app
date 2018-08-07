class Weather
  def getWeather
    Rails.logger.error ("Called Get Weather")
    apiToken = Faraday.get "https://api.darksky.net/forecast/187a595cb618d96cf7e406dccdbfd5b4/48.75262,-122.469657"
    Rails.logger.error (apiToken)

    JSON.parse(apiToken.body).to_h
  end
end
