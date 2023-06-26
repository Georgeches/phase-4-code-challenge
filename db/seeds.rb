puts "seeding!"
pizza_data = [
  { name: "Margherita", ingredients: "Tomato, Mozzarella, Basil" },
  { name: "Pepperoni", ingredients: "Tomato, Mozzarella, Pepperoni" },
  { name: "Vegetarian", ingredients: "Tomato, Mozzarella, Mixed Vegetables" }
]

pizzas = Pizza.create(pizza_data)

# Seed data for Restaurants
restaurant_data = [
  { name: "Pizza Hut", address: "123 Main St" },
  { name: "Domino's", address: "456 Elm St" },
  { name: "Papa John's", address: "789 Oak St" }
]

restaurants = Restaurant.create(restaurant_data)

# Seed data for RestaurantPizzas
restaurant_pizza_data = [
  { price: 10, pizza: pizzas[0], restaurant: restaurants[0] },
  { price: 12, pizza: pizzas[1], restaurant: restaurants[1] },
  { price: 11, pizza: pizzas[2], restaurant: restaurants[2] }
]

RestaurantPizza.create(restaurant_pizza_data)

puts "done !!"