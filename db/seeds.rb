# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all
User.destroy_all

5.times{(Book.create(name:"Jobu",tittle:"Atomic habits",author:"James clear",description:"1 per cent",price:"650/="))}
5.times{(User.create(name:"Jobu",gender:"male",email:"try123@gmail.com",intrest:"self-help",password:"pass1234"))}
User.create(name:"Tanui",gender:"male",email:"try321@gmail.com",intrest:"business",password:"pass4234")

puts "Done seeding, continue..."
