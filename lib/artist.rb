class Artist 
  attr_accessor :name
  @@all = [] 
  
  def initialize(name)
    @name = name 
  end 
  
  def songs 
   Song.select.all do |song|
     song.artist == self 
   end 
  end 
  
  def add_song(song)
    song.artist = self  
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end 
  
  def self.song_count 
    Song.all.count 
  end 
end 