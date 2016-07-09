ChessClass.delete_all
Instructor.delete_all


ChessClass.create!(school: "Indian Valley", size: 30, price: 100, days: "Thursday")
ChessClass.create!(school: "Walnut Acres", size: 21, price: 100, days: "Monday")
ChessClass.create!(school: "Baldwin", size: 40, price: 100, days: "Friday")
ChessClass.create!(school: "Stoneman", size: 10, price: 100, days: "Wednesday")
ChessClass.create!(school: "Highlands", size: 15, price: 100, days: "Tuesday")

Instructor.create!(first_name: "Anthony", last_name: "Blessing", email: "antblessing@gmail.com")
Instructor.create!(first_name: "Jeff", last_name: "McCann", email: "jeff@gmail.com")
Instructor.create!(first_name: "Ryan", last_name: "Blessing", email: "ryan@gmail.com")
Instructor.create!(first_name: "Socks", last_name: "Cat", email: "socks@gmail.com")

puts "#{ChessClass.count} classes created."
puts "#{Instructor.count} instructors created."
