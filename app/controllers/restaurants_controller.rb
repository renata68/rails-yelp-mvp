class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def top
    @restaurants = Restaurant.where(rating: 5)
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant) # přesměruje na show
    else
      render :new, status: :unprocessable_entity
    end
  end
end
