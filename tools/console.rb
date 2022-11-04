require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

#Author
author1 = Author.new("Naval Ravikant")
author2 = Author.new("Biko Zulu")

#Magazine
lifestyle = Magazine.new("Exercise", "Yoga")
interior = Magazine.new("Music room", "Rustic")
technology = Magazine.new("Innovation", "AI")

#Article
article1 = Article.new(author1, lifestyle, "Issue No.1")
article2 = Article.new(author2, interior, "Issue No.1")
article2 = Article.new(author1, technology, "Issue No.1")
article4 = Article.new(author2, lifestyle, "Issue No.2")
article5 = Article.new(author1, interior, "Issue No.2")
article6 = Article.new(author2, technology, "Issue No.2")
article7 = Article.new(author1, lifestyle, "Issue No.3")
article8 = Article.new(author2, interior, "Issue No.3")
article9 = Article.new(author1, technology, "Issue No.3")

### DO NOT REMOVE THIS
binding.pry

0
