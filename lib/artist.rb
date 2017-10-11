
# artist = Artist.new('Michael Jackson')
# artist.name
#=> 'Michael Jackson'

class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
