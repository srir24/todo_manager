require './connect_db.rb'
connect_db!

Todo.create!(name: "User1", email: "user1@gmail.com", password: "user1@123")
