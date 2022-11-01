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
      author_instances = Article.all.filter_map.with_index do |article,index| 
        if(Article.all[index].magazine == self.name)
            # article.author.name
            Article.all[index].author
            Author.all.find { |author_instance|  author_instance.name == Article.all[index].author }
        end
      end
      author_instances.uniq
    end
  
    def self.find_by_name(name)
      Magazine.all.find {|magazine| magazine.name == name}
    end
  
    def article_titles
      Article.all.filter.filter_map.with_index {|article,index| article.title if Article.all[index].magazine == self.name}
    end
  
    def contributing_authors
      all_magazine_authors = Article.all.filter.filter_map.with_index { |article,index| article.author if Article.all[index].magazine == self.name }
      
      authors_more_than_two_articles = all_magazine_authors.filter { |author| all_magazine_authors.count(author) > 2 }
  
      authors_more_than_two_articles.uniq
    end
  
  
  end