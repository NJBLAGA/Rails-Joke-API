# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
joke_categories = ["Puns", "Programming", "Knock Knock", "Limericks"]

if User.count == 0
    User.create(username: "Nathan", email: "nathan@test.com", password: "password1", password_confirmation: "password1")
    User.create(username: "Nicole", email: "nicole@test.com", password: "password2", password_confirmation: "password2")
    User.create(username: "Joshua", email: "Joshua@test.com", password: "password3", password_confirmation: "password3")
end

if Category.all.length == 0
    joke_categories.each do |category|
        Category.create(name: category)
        puts "Created #{category} category"
    end
end


    Joke.create(user_id: 1,category_id: 1, body: "A good steak pun is a rare medium done well")
    Joke.create(user_id: 1,category_id: 1, body: "I was wondering why the ball was getting bigger. Then it hit me") 
    Joke.create(user_id: 1,category_id: 1, body: "What’s the difference between a hippo and a zippo? One is really heavy and the other is a little lighter")
    Joke.create(user_id: 1,category_id: 1, body: "I tried to sue the airline for losing my luggage. I lost my case")
    Joke.create(user_id: 2, category_id: 2, body: "In order to understand recursion you must first understand recursion.")
    Joke.create(user_id: 2, category_id: 2, body: "A programmer is heading out to the grocery store, so his wife tells him \"get a gallon of milk, and if they have eggs, get a dozen.\" He returns with 13 gallons of milk.")
    Joke.create(user_id: 2, category_id: 2, body: "Why do programmers give you a gift on Halloween? Because OCT 30 == DEC 25")
