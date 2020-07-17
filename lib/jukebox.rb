require "pry"
class Jukebox
  attr_accessor :songs, :input, :call, :help
  def initialize(songs)
    @songs = songs
  end

  def help
    puts "type help list play or exit"
  end

  def get_input
    self.input = gets.chomp
  end

  def exit

  end

  def do_command
    if self.input == "help"
      self.help
    elsif self.input == "songs"
      self.songs
    elsif self.input == "call"
      self.call
    elsif self.input == "exit"
      self.exit
    end
  end

  def list
    songs.each do |x|
      puts x
    end
  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above"
    # binding.pry
    if songs.include?(self.get_input)
      puts "Now playing #{self.get_input}"
    elsif self.get_input.match(/[0-9]/)
      puts "Now playing: #{songs[self.get_input.to_i - 1]}"
    end
  end

end
