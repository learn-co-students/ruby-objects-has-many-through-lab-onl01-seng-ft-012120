class Genre 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    artists = self.songs.collect {|x| x.artist}
  end
  
  def self.all
    @@all
  end
  
end