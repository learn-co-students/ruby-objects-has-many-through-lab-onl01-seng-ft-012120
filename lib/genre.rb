class Genre
    attr_accessor :name 
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.genre = self
    end

    # def new_song(name, artist)
    #     song = Song.new(name, artist, genre = self)
    #     song.genre = self
    #     song
    # end


    def songs
        Song.all.select{|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map {|i| i.artist}
    end


end
