class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all
    render json: {
      restaurants: restaurants.as_json({include: :tags})
    }
  end
end
