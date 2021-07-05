class Artist
  attr_accessor :name

  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(title, genre)
    new_song = Song.new(title, self, genre)
  end

  def genres
    Song.all.collect do |song|
      song.artist == self
      song.genre
    end
  end
end
