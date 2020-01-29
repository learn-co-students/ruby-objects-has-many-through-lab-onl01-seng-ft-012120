
class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_song(name, genre)
        #check arguments with Song class initialization
        Song.new(name, self, genre)
    end

    #iterate through all songs and find those that match artist
    #use "select" to accomplish this
    def songs
        Song.all.select {|song| song.artist == self}
    end

    #iterate through all genres and find those that match artist
    def genres
        genres_array = []
        Song.all.each do |song|
            if song.artist == self
                genres_array << song.genre
            end
        end
        genres_array
    end



end