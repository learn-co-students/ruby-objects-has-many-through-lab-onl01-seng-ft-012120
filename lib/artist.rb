class Artist 
  
  @@all = [] 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    
    
    save 
  end 
  
  def self.all 
    @@all
  end   
  
  def save 
    @@all << self 
  end   
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end   
  
  def genres 
    songs.collect {|song| song.genre}
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
end 