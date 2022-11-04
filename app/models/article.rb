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
