class Genre 
  
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
    #Song.all {|song| song.genre == self}
    Song.all.select {|song| song.genre == self}
  end   

  def artists
    songs.collect {|song| song.artist}
  end 
  
end  