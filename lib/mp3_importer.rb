
class MP3Importer

  attr_accessor :path

  # MP3Importer #initialize accepts a file path to parse mp3 files from
  def initialize(filepath)
    @path = filepath
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

end

# test_music_path = "./spec/fixtures/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# music_importer.path
#=> test_music_path


# music_importer = MP3Importer.new(test_music_path)
# music_importer.files.size
#=> 4
# so files should return an array of files in test_music_path
