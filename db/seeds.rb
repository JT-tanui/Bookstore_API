# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times{(books.create(name:"Jobu",tittle:"Atomic habits",author:"James clear",description:"1 per cent",price:"650/="))}
5.times{(users.create(name:"Jobu",gender:"male",email:"try123@gmail.com",intrest:"self-help",password:"pass1234"))}

(users.create(name:"Jobu",gender:"male",email:"try123@gmail.com",intrest:"self-help",password:"pass1234"))