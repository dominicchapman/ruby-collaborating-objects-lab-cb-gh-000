
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

  # Artist #print_songs lists all of the artist's songs
  def print_songs
    self.songs.map { |song| puts song.name }
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
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

# dirty_diana = Song.new("Dirty Diana")
# billie_jean = Song.new("Billie Jean")
# artist.add_song(dirty_diana)
# artist.add_song(billie_jean)
# artist.print_songs
#=> "Dirty Diana\nBillie Jean\n"
