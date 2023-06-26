class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
    end

    private

    def restaurant_pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
    end
end
