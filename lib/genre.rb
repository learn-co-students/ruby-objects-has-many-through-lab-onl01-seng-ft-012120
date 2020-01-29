class Genre

    attr_reader :name 

    @@all = []

    def self.all 
        @@all 
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    #iterate through songs and find songs that belong to genre
    def songs
        Song.all.select {|song| song.genre == self}
    end

    #iterate through genres collection of songs and collect the artist  
    #that own each song
    def artists
        artists_array = []
        Song.all.each do |song|
            if song.genre == self
                artists_array << song.artist
            end
        end
        artists_array
    end




end