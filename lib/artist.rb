class Artist
  @@all =[]
  attr_accessor :name
  def initialize(name)
    self.name= name
    self.save
  end

  def save
    @@all << self
  end

  def self.all 
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(song_name, genre)

    Song.new(song_name,self,genre )
  end
  
  def genres
    self.songs.collect{|song| song.genre}
  end

end