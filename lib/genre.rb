class Genre 
  attr_reader :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
     @@all 
  end 
  
  def songs 
   Song.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def artists
    self.songs.collect do |genre|
      genre.artist
    end 
  end 
end 