require 'pry'

class Jukebox
  attr_accessor :songs, :input, :call

  def initialize(songs = [])
    @songs = songs
  end

  def help
    puts "help\nlist\nplay\nexit"
  end

  def get_input
    @input = gets.chomp
  end

  def do_command
    get_input
    case get_input
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit
    end   
  end

  def list
    songs.each { |track| puts track }
  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above"
    if songs.include?(get_input)
      puts "Now playing #{get_input}"
    elsif get_input.match(/[0-9]/)
      puts "Now playing: #{songs[get_input.to_i - 1]}"
    end
  end
end