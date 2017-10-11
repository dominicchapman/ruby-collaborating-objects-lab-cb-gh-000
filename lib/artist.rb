
# artist = Artist.new('Michael Jackson')
# artist.name
#=> 'Michael Jackson'

class Artist

  # Artist #name= sets the artist name
  attr_accessor :name

  # Artist #initialize with #name accepts a name for the artist
  def initialize(name)
    @name = name
  end

end
