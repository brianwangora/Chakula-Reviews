puts "🌱 Seeding spices..."

# Seed your database here
puts "creating restaurants..."
cafe_kaya = Restaurant.create(name: "Cafe Kaya", location: "Westlands", type: "Casual Dining")
karel_t = Restaurant.create(name: "Karel-T", location: "Village Market", type: "Fine Dining")
about_thyme = Restaurant.create(name: "About Thyme", location: "Parklands", type: "Fine Dining")
copper_ivy = Restaurant.create(name: "Copper Ivy", location: "Kitusuru", type: "Casual Dining")
red_ginger = Restaurant.create(name: "Red Ginger", location: "Parklands", type: "Casual Dining")
ankole_grill = Restaurant.create(name: "Ankole Grill", location: "Kitusuru", type: "Casual Dining")
la_terrazza = Restaurant.create(name: "La Terrazza", location: "Kileleshwa", type: "Fine Dining")
mercado = Restaurant.create(name: "Mercado", location: "Westlands", type: "Casual Dining")
frangos = Restaurant.create(name: "Frangos", location: "Kilimani", type: "Casual Dining")

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



puts "✅ Done seeding!"
