class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Article instances written by this author
  def articles
    Article.all.filter.with_index do |article, index| 
      # article.author.name == self.name
      Article.all[index].author == self.name
    end
  end

  def magazines
    all_magazines = self.articles.map { |article| article.magazine }
    all_magazines.uniq()
  end

  def self.all
    @@all
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    all_categories_contributed = self.articles.map {|article| article.category}
    all_categories_contributed.uniq()
  end

end
