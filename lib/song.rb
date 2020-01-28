class Song
    attr_accessor :artist, :name, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        # self.genre
        @@all << self
        
    end



    # def genre
    #     genre = Genre.new(genre)
    #     genre.artist = artist
    #     self.genre = genre 
    #     genre
    # end

    def songs
        @@all
    end

    def self.all
        @@all
    end


end
