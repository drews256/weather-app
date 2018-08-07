class Forecast
  def get_forecast
     faraday_response = Faraday.get('https://api.darksky.net/forecast/8129cd3a0d29af3b3e38af86149d6091/48.769768,-122.485886')
     JSON.parse(faraday_response.body).to_h
  end
end
