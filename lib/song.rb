
class Song

  # Song #name= sets the song name
  # Song #artist= sets the artist object to belong to the song
  attr_accessor :name, :artist

  # Song #initialize with #name accepts a name for the song
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(' - ')
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

end

# song = Song.new('Man in the Mirror')
# file_name = 'Michael Jackson - Black or White - pop.mp3'

# song.name
#=> 'Man in the Mirror'

# new_instance = Song.new_by_filename(file_name)
# new_instance.name
#=> 'Black or White'
# new_instance.artist.name
#=> 'Michael Jackson'
