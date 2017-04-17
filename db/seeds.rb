# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bookmarks = [{name: "CodeFights", description: "a website to for one-on-one competitive programming", category: "Education", url: "https://codefights.com/"},
            {name: "Leetcode", description: " a platform for preparing technical coding interviews", category: "Education", url: "https://leetcode.com/"},
            {name: "Hackerrank", description: "The HackerRank team is on a mission to match every developer in the world to the right job by providing a technical recruiting platform that assesses developers based on actual coding skills", category: "Education", url: "https://www.hackerrank.com/"},
            {name: "handlebars", description: "Handlebars provides the power necessary to let you build semantic templates effectively with no frustration", category: "Framework", url: "http://handlebarsjs.com/"},
            {name: "bmorelli25/Become-A-Full-Stack-Web-Developer", description: "100+ Free resources for learning Full Stack Web Development", category: "Interview Prep", url: "https://github.com/bmorelli25/Become-A-Full-Stack-Web-Developer"},
            {name: "kdn251/interviews", description: "Your personal guide to Software Engineering technical interviews", category: "Interview Prep", url: "https://github.com/kdn251/Interviews"},
            {name: "poteto/hiring-without-whiteboards", description: "A listing of companies (or teams within companies) that don't do typical, CS based whiteboard interviews", category: "Interview Prep", url: "https://github.com/poteto/hiring-without-whiteboards"},
            {name: "Ruby on Rails Guides", description: "These guides are designed to make you immediately productive with Rails, and to help you understand how all of the pieces fit together", category: "Education", url: "http://guides.rubyonrails.org/"},
            {name: "Ruby Docs", description: "Help and documentation for the Ruby programming language", category: "Education", url: "https://ruby-doc.org/"},
            {name: "Popular Coding Books", description: "I analyzed every book ever mentioned on Stack Overflow. Here are the most popular ones", category: "Education", url: "https://medium.freecodecamp.com/i-analyzed-every-book-ever-mentioned-on-stack-overflow-here-are-the-most-popular-oes-eee0891f1786"},
            {name: "Tacos and Tech: Tech Jobs in San Diego", description: "40 of San Diego's Biggest Tech Employers", category: "Jobs", url: "https://sandiegoisbetter.com/"},
            {name: "Nokogiri - Searching a XML/HTML Document", description: "Nokogiri's own guide to scraping", category: "Gem", url: "http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html"},
            {name: "Artificial Intelligence (AI) at edX", description: "Learn the fundamentals of Artificial Intelligence (AI), and apply them. Design intelligent agents to solve real-world problems including, search, games, machine learning, logic, and constraint satisfaction problems.", category: "education", url: "https://www.edx.org/course/artificial-intelligence-ai-columbiax-csmm-101x-0"},
            {name: "3 JavaScript questions to watch out for during coding interviews", description: "3 things that usually come up in interviews when discussing JavaScript.", category: "Interview Prep", url: "https://medium.freecodecamp.com/3-questions-to-watch-out-for-in-a-javascript-interview-725012834ccb"},
            {name: "Bootstrap", description: "Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.", category: "Framework", url: "http://getbootstrap.com/"},
            {name: "Sinatra", description: "Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort", category: "Framework", url: "http://www.sinatrarb.com/"},
            {name: "Knapsack Coding Problem", description: "Given weights and values of n items, put these items in a knapsack of capacity W to get the maximum total value in the knapsack.", category: "Coding Practice", url: "http://www.geeksforgeeks.org/dynamic-programming-set-10-0-1-knapsack-problem/"},
            {name: "Traveling Salesman Coding Problem", description: "Given a list of cities and the distances between each pair of cities, what is the shortest possible route that visits each city exactly once and returns to the origin city?", category: "Coding Practice", url: "http://www.sanfoundry.com/java-program-implement-traveling-salesman-problem-using-nearest-neighbour-algorithm/"},
            {name: "XSS Hacking Game by Google", description: "Cross-site scripting (XSS) bugs are one of the most common and dangerous types of vulnerabilities in Web applications.", category: "Coding Practice", url: "https://xss-game.appspot.com/"},
            {name: "Hanami", description: "Hanami is a modern web framework for Ruby.", category: "Framework", url: "http://hanamirb.org/"},
            {name: "Breadth First Search", description: "Breadth-first search (BFS) is an algorithm for traversing or searching tree or graph data structures.", category: "Algorithm", url: "https://en.wikipedia.org/wiki/Breadth-first_search"},
            {name: "CSS Cheat Sheet", description: "All your CSS needs in one location!", category: "Education", url: "http://www.lesliefranke.com/files/reference/csscheatsheet.html"},
            {name: "How you can start a career in a different field without “experience” — tips that got me job offers from Google and other tech giants", description: "how to quickly gain experience in any field, as well as how you can leverage that new experience to land job offers in that field.", category: "Interview", url: "https://medium.freecodecamp.com/how-you-start-a-career-in-a-different-field-without-experience-tips-that-got-me-job-offers-from-7425f590f3eb"},
            {name: "dotenv", description: "Shim to load environment variables from .env into ENV in development.", category: "Gem", url: "https://github.com/bkeepers/dotenv"},
            {name: "Google I/O 2009 - The Myth of the Genius Programmer", description: "A self confidence boosting video", category: "Education", url: "https://www.youtube.com/watch?v=0SARbwvhupQ"},
            {name: "Coding Interview University", description: "a short to-do list of study topics for becoming a software engineer", category: "Interview", url: "https://github.com/jwasham/coding-interview-university"},
            {name: "The difference between Virtual DOM and DOM", description: "The DOMS of React.js", category: "Education", url: "http://reactkungfu.com/2015/10/the-difference-between-virtual-dom-and-dom/"},
            {name: "Udacity's AI Engineer Course", description: "study to become an AI engineer! ", category: "Education", url: "https://www.udacity.com/ai"},
            {name: "React", description: "React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes.", category: "Framework", url: "https://facebook.github.io/react/"},
            {name: "Flatiron School", description: "The premier coding bootcamp for launching developers. Proven job outcomes, career-ready curriculum, and a focus on building community through code. Learn in NYC or online using the world’s most advanced programming education platform.", category: "Education", url: "https://flatironschool.com/"}
          ]


bookmarks.each do |bookmark|
  Bookmark.create(bookmark)
end
