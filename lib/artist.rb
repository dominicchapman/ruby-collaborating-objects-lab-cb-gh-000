
# artist = Artist.new('Michael Jackson')
# artist.name
#=> 'Michael Jackson'

# song_one = Song.new("Rock With You")
# song_two = Song.new("Smooth Criminal")
# artist.add_song(song_one)
# artist.add_song(song_two)
# expect(artist.songs).to eq([song_one, song_two])

class Artist

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

end
