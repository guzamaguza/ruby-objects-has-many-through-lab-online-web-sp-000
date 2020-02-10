class Artist
  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name,self,genre)
    #new_song.name = name
    #new_song.genre = genre
    #new_song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    #iterate over the artists songs and returns each genre
    self.songs.collect do |song|
      song.genre
    end
  end

end
