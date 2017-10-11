
# song = Song.new('Man in the Mirror')
# file_name = 'Michael Jackson - Black or White - pop.mp3'

# song.name
#=> 'Man in the Mirror'



class Song

  # Song #name= sets the song name
  attr_accessor :name

  # Song #initialize with #name accepts a name for the song
  def initialize(name)
    @name = name
  end

end
