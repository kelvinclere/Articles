class Article
    attr_reader :author, :magazine, :title, :category
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author.name
      @magazine = magazine.name
      @category = magazine.category
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end
