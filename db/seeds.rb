# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bookmarks = [{name: "CodeFights", description: "a website to for one-on-one competitive programming", url: "https://codefights.com/"},
            {name: "Leetcode", description: " a platform for preparing technical coding interviews", url: "https://leetcode.com/"},
            {name: "Hackerrank", description: "The HackerRank team is on a mission to match every developer in the world to the right job by providing a technical recruiting platform that assesses developers based on actual coding skills", url: "https://www.hackerrank.com/"},
            {name: "handlebars", description: "Handlebars provides the power necessary to let you build semantic templates effectively with no frustration", url: "http://handlebarsjs.com/"},
            {name: "bmorelli25/Become-A-Full-Stack-Web-Developer", description: "100+ Free resources for learning Full Stack Web Development", url: "https://github.com/bmorelli25/Become-A-Full-Stack-Web-Developer"},
            {name: "kdn251/interviews", description: "Your personal guide to Software Engineering technical interviews", url: "https://github.com/kdn251/Interviews"},
            {name: "poteto/hiring-without-whiteboards", description: "A listing of companies (or teams within companies) that don't do typical, CS based whiteboard interviews", url: "https://github.com/poteto/hiring-without-whiteboards"},
            {name: "Ruby on Rails Guides", description: "These guides are designed to make you immediately productive with Rails, and to help you understand how all of the pieces fit together", url: "http://guides.rubyonrails.org/"},
            {name: "Ruby Docs", description: "Help and documentation for the Ruby programming language", url: "https://ruby-doc.org/"},
            {name: "Popular Coding Books", description: "I analyzed every book ever mentioned on Stack Overflow. Here are the most popular ones", url: "https://medium.freecodecamp.com/i-analyzed-every-book-ever-mentioned-on-stack-overflow-here-are-the-most-popular-oes-eee0891f1786"}]

bookmarks.each do |bookmark|
  Bookmark.create(bookmark)
end
