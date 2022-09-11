puts "🌱 Seeding spices..."

puts "Deleting all data..."
Restaurant.destroy_all
User.destroy_all
Review.destroy_all


puts "creating restaurants..."
cafe_kaya = Restaurant.create(name: "Cafe Kaya", location: "Westlands", restaurant_type: "Casual Dining")
karel_t = Restaurant.create(name: "Karel-T", location: "Village Market", restaurant_type: "Fine Dining")
about_thyme = Restaurant.create(name: "About Thyme", location: "Parklands", restaurant_type: "Fine Dining")
copper_ivy = Restaurant.create(name: "Copper Ivy", location: "Kitusuru", restaurant_type: "Casual Dining")
red_ginger = Restaurant.create(name: "Red Ginger", location: "Parklands", restaurant_type: "Casual Dining")
ankole_grill = Restaurant.create(name: "Ankole Grill", location: "Kitusuru", restaurant_type: "Casual Dining")
la_terrazza = Restaurant.create(name: "La Terrazza", location: "Kileleshwa", restaurant_type: "Fine Dining")
mercado = Restaurant.create(name: "Mercado", location: "Westlands", restaurant_type: "Casual Dining")
frangos = Restaurant.create(name: "Frangos", location: "Kilimani", restaurant_type: "Casual Dining")
kfc = Restaurant.create(name: "KFC", location: "Langata", restaurant_type: "Fast Food")

puts "creating users ..."
carl = User.create(name: "Carl")
kris = User.create(name: "Kris")
stan = User.create(name: "Stan")
naomi = User.create(name: "Naomi")
jost = User.create(name: "Jost")
lando = User.create(name: "Lando")
jenson = User.create(name: "Jenson")
lewis = User.create(name: "Lewis")
alex = User.create(name: "Alex")

puts "creating reviews..."
review1 = Review.create(user_id: 1, restaurant_id: 1, score: 8.5, comment: "Good.")
review2 = Review.create(user_id: 2, restaurant_id: 2, score: 6, comment: "Bad.")
review3 = Review.create(user_id: 3, restaurant_id: 3, score: 3, comment: "Interesting.")
review4 = Review.create(user_id: 4, restaurant_id: 4, score: 9.5, comment: "Small portions.")
review5 = Review.create(user_id: 5, restaurant_id: 5, score: 3.7, comment: "Filling.")
review6 = Review.create(user_id: 6, restaurant_id: 6, score: 8.9, comment: "Good service.")
review7 = Review.create(user_id: 7, restaurant_id: 7, score: 5.5, comment: "Bad service")
review8 = Review.create(user_id: 8, restaurant_id: 8, score: 9.2, comment: "Food was too salty")
review9 = Review.create(user_id: 9, restaurant_id: 9, score: 6.5, comment: "Good")
review10 = Review.create(user_id: 3, restaurant_id: 10, score: 2.5, comment: "Long wait times")



puts "✅ Done seeding!"
