class Song 
  attr_accessor :name, :artist
  attr_reader :artist_name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

  def artist_name 
    if artist == nil 
      nil 
    else 
      @artist_name = self.artist.name 
    end 
  end 
end 