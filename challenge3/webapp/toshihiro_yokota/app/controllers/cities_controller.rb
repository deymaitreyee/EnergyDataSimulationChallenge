class CitiesController < ApplicationController
  def index
    cities = City.eager_load(:energies)
    @cities_data = CityChartService.call(cities)
    @dates = Energy.dates
  end
end
