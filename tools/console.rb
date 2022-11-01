require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Magazine
mag1 = Magazine.new("Relationship", "political")
mag2 = Magazine.new("star", "business")
mag3 = Magazine.new("Daily nation", "Parenting")
mag4 = Magazine.new("people", "sports")

#Author
author1 = Author.new("Wizzy")
author2 = Author.new("Kelvin")
author3 = Author.new("Anna")
author4 = Author.new("James")

#Articles
art1 = Article.new(author1, mag1, "Food crisis")
art2 = Article.new(author2, mag2, "Mombasa Port")
art3 = Article.new(author1, mag1, "Sports")
art4 = Article.new(author1, mag3, "CS vetting")
art5 = Article.new(author3, mag3, "The founder of wilson Airport")

art6 = author4.add_article(mag4, "Christiano Ronaldo")

art7 = Article.new(author2, mag1, "Nation sports")
art8 = Article.new(author1, mag1, "China Taiwan tensions")
art9 = Article.new(author2, mag1, "Indian Ocean")
art10 = Article.new(author2, mag1, "Kenya's Economy Recovery")
art11 = Article.new(author3, mag1, "Elon Mus







### DO NOT REMOVE THIS
binding.pry

0
