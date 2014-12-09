module TemperatureHelper
  def convert(k)
    (((9/5)*(k-273))+32).to_i
  end
end
