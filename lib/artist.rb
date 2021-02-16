class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def genres
        self.songs.collect do |song|
            song.genre
        end
    end

    def songs
        Song.all.select do |song|
            song.artist==self
        end
    end

    def new_song(name, genre)
        song=Song.new(name, self, genre)
    end

        
end




