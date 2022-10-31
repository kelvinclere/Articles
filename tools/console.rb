require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Magazine
mag1 = Magazine.new("Relationship", "political")
mag2 = Magazine.new("star", "business")
mag3 = Magazine.new("Daily nation", "Parenting")

#Author
author1 = Author.new("Wizzy")
author2 = Author.new("Kelvin")
author3 = Author.new("Anna")

#Articles
art1 = Article.new(author1, mag1, "Food crisis")
art2 = Article.new(author2, mag2, "Mombase Port")
art3 = Article.new(author1, mag1, "Sports")
art4 = Article.new(author1, mag3, "CS vetting")
art5 = Article.new(author3, mag3, "The founder of wilson Airport")







### DO NOT REMOVE THIS
binding.pry

0
