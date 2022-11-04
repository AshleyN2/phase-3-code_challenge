# Please copy/paste all three classes into this file to submit your solution!

# ********************************************************************************************************************************************************* #

# ARTICLE
class Article
    attr_accessor :author, :magazine, :title
    @@all = []

    def initialize (author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
    end

# Returns the title for that given article
    def title
        @title = title
    end 

# Returns the author for that given article
    def author 
        @author = author
    end

# Returns the magazine for that given article
    def magazine
        @magazine = magazine
    end

# Returns an array of all Article instances
    def self.all
        @@all
    end
end

# ********************************************************************************************************************************************************* #

# AUTHOR
class Author
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end
  
    def name
      @name = name
    end 
  
  # Returns an array of Article instances the author has written
    def articles 
      Article.all.filter {|article| article.author == @name}
    end
  
  # Returns a **unique** array of Magazine instances for which the author has contributed to  
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
  
  # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end 
  
  # Returns a **unique** array of strings with the categories of the magazines the author has contributed to
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end
  
# ********************************************************************************************************************************************************* #

# MAGAZINE
class Magazine
    attr_accessor :name, :category
    @@all = []
  
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self # shovels instances to array
    end
  
    def name
      @name = name
    end
  
    def category
      @category = category
    end 
  
  #Returns an array of all Magazine instances
    def self.all
      @@all
    end
  
  # Given a string of magazine's name, this method returns the first magazine object that matches
    def find_by_name (name)
      self.all.find  {|magazine| magazine.name == name} 
    end
  
  # Returns an array strings of the titles of all articles written for that magazine
    def article_titles
      self.articles.map { | article | article.title}
    end
  
  # Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
      self.contributors.filter { |author| author.articles.count > 2}
    end
  end
  
# ********************************************************************************************************************************************************* #