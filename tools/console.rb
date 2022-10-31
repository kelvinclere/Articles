require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Magazine
mag1 = Magazine.new("nation", "political")
mag2 = Magazine.new("star", "business")
mag3 = Magazine.new("standard", "editorial")

#Author
author1 = Author.new("John")
author2 = Author.new("Peter")
author3 = Author.new("Kevin")

#Articles
art1 = Article.new(author1, mag1, "Elections 2022")
art2 = Article.new(author2, mag2, "Mombase Port")
art3 = Article.new(author1, mag1, "DJ Trump")
art4 = Article.new(author1, mag3, "Ukraine War Crisis")
art5 = Article.new(author3, mag3, "Standard's 2nd author")







### DO NOT REMOVE THIS
binding.pry

0
