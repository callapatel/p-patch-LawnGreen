class Weather
require 'httparty'

  def self.current_weather(lat, long)
    request_weather("weather", lat, long)
  end

  def self.forecast(lat, long)
    request_forecast(lat, long)
  end

  def self.request_weather(path, lat, long)
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/#{path}?lat=#{lat}&lon=#{long}")
    response.parsed_response
  end

  def self.request_forecast(lat, long)
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?lat=#{lat}&lon=#{long}&cnt=5&mode=json")
    response.parsed_response
  end


end
