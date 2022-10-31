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
