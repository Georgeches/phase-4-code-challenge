# Restaurant-pizzas API
This project is a pizza restaurant management system built using Ruby on Rails. It provides a RESTful API for managing restaurants and pizzas. The system follows the guidelines outlined below:

## Models
The project includes the following models and relationships:
A Restaurant has many Pizzas through RestaurantPizza. A Pizza has many Restaurants through RestaurantPizza. A RestaurantPizza belongs to a Restaurant and belongs to a Pizza. The model files have been set up with the necessary associations to establish these relationships. Migrations are provided to create the corresponding database tables.

## Validations
The RestaurantPizza model includes a validation to ensure that the price attribute falls between the range of 1 and 30. This validation ensures that only valid prices are accepted for restaurant pizzas.

## Routes
The project defines the following routes and API endpoints:

### GET /restaurants:
Retrieves all restaurants. The response is in JSON format and includes an array of restaurants with their respective id, name, and address attributes.

### GET /restaurants/id
Retrieves a specific restaurant by its id parameter. If the restaurant exists, the response is in JSON format and includes the restaurant's details, including associated pizzas. The format of the response JSON is specified in the guidelines.

### DELETE /restaurants/id
Deletes a specific restaurant by its id parameter. If the restaurant exists, it is removed from the database, along with any associated RestaurantPizza records. The response is an empty body with the appropriate HTTP status code.

### GET /pizzas:
Retrieves all pizzas. The response is in JSON format and includes an array of pizzas with their respective id, name, and ingredients attributes.

### POST /restaurant_pizzas:
Creates a new RestaurantPizza record associated with an existing pizza and restaurant. The request body should include the price, pizza_id, and restaurant_id properties. If the creation is successful, the response includes the data related to the pizza in JSON format. If the creation fails due to validation errors, the response includes an array of error messages.

# Usage
To use this project:
Clone the repository. Set up the required dependencies by running bundle install. Create the database and run the migrations using rails db:create db:migrate. (Optional) Seed the database with sample data using rails db:seed. Start the server with rails s.

# Author
George Chesire

# License
MIT License