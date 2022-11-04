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
