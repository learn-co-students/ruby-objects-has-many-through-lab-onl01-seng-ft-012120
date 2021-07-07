class Artist 
  
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
    # save 
  end 
  
  def self.all 
    @@all
  end   
  
  # def save 
  #   @@all << self 
  # end   
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end   
  
  def genres 
    songs.collect {|song| song.genre}
  end 
  
end 