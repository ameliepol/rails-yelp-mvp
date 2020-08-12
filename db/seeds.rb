puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chez_loulou = { name: "Chez Loulou", address: "33000 Bordeaux", category: "french" }
peppone = { name: "Peppone", address: "33000 Bordeaux", category: "italian" }
oi_sushi = { name: "Oi Sushi", address: "75005 Paris", category: "japanese" }
asia_room = { name: "Asia Room", address: "75005 Paris", category: "chinese" }
baraka_frites = { name: "Baraka Frites", address: "33000 Bordeaux", category: "belgian" }

[chez_loulou, peppone, oi_sushi, asia_room, baraka_frites].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


