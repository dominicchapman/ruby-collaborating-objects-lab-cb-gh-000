require 'pry'

class MP3Importer

  attr_accessor :path

  # MP3Importer #initialize accepts a file path to parse mp3 files from
  def initialize(filepath)
    @path = filepath
  end

  # MP3Importer #files loads all the mp3 files in the path directory
  # MP3Importer #files normalizes the filename to just the mp3 filename with no path
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    binding.pry
  end

end

# test_music_path = "./spec/fixtures/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# music_importer.path
#=> test_music_path

# music_importer = MP3Importer.new(test_music_path)
# music_importer.files.size
#=> 4

# Artist.class_variable_set("@@all",[])
# music_importer = MP3Importer.new(test_music_path)
# music_importer.import
# Artist.all.size
#=> 3
