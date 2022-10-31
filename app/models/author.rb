class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Artile instances written by this author
  def articles
    Article.all.filter do |article| 
      article.author == self.name
    end
  end

  def magazines
    self.articles.uniq {|article| article.magazine}
  end

  def self.all
    @@all
  end

end
