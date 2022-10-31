# Please copy/paste all three classes into this file to submit your solution!
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


  class Magazine
    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors
      
      author_instances = Article.all.filter_map do |article| 
        
        if(article.magazine == self.name)
            article.author 
  
            author_instances = Author.all.find do |author_instance| 
              author_instance.name == article.author
            end
        end
        
      end
      
      author_instances.uniq
    end
  
  end


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