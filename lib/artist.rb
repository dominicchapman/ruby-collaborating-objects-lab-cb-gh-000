
class Artist

  @@all = []

  # Artist #name= sets the artist name
  # Artist #songs keeps track of an artist's songs
  attr_accessor :name, :songs

  # Artist #initialize with #name accepts a name for the artist
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  # Artist #save adds the artist instance to the @@all class variable
  def save
    @@all << self
  end

end


# artist = Artist.new('Michael Jackson')
# artist.name
#=> 'Michael Jackson'

# song_one = Song.new("Rock With You")
# song_two = Song.new("Smooth Criminal")
# artist.add_song(song_one)
# artist.add_song(song_two)
# artist.songs)
#=> ([song_one, song_two])

# artist.save
# Artist.all.include?(artist)
#=> true
