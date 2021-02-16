class Song
    @@all=[]
    attr_accessor :artist, :title, :genre
    def initialize(title, artist, genre)
        @title=title
        @artist=artist
        @genre=genre
        @@all << self
    end

    def self.all
        @@all
    end

end

