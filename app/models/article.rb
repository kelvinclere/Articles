class Article
    attr_reader :author, :magazine, :title
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author.name
      @magazine = magazine.name
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
  end
