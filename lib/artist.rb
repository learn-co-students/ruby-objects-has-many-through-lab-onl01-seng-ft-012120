class Artist
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize (name)
    @name = name
    @song = song
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres
    Song.all.map do |song|
      song.artist
      song.genre
    end
  end
  
end