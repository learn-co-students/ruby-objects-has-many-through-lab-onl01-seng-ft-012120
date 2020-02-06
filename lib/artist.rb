class Artist
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|i| i.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, artist=self, genre)
        #song.artist = self
        song
    end



    def genres
        songs.map {|i| i.genre}
    end
end
