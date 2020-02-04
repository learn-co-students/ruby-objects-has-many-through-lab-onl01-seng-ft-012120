class Genre
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.save
  end

  def save
    @@all << self
  end


  def self.all 
    @@all
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end

  def artists
    artists = self.songs.collect{|song| song.artist}
    
  end
end