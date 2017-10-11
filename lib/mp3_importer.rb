
class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

end

# test_music_path = "./spec/fixtures/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# music_importer.path
#=> test_music_path