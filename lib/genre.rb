class Genre
    attr_reader :name

    @@all = []
    

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map(&:artist)
    end
end