class Jukebox

  attr_accessor :songs, :input

  def initialize(songs)
    @songs = songs
  end

  def call
  end

  def help
    puts "help\nlist\nplay\nexit"
  end

  def get_input
    puts "Enter a command:"
    @input = gets.chomp
  end

  def do_command
    get_input

    case @input
    when "help"
      help
    when "list"
      list
    when "play"
      play
    else
      exit
    end
  end

  def list
    self.songs.each_with_index do |song, index|
      puts "#{(index + 1)}. #{song}"
    end
  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above"
    response = gets.chomp
    if (1..self.songs.count).to_a.include?(response.to_i)
      puts "Now playing: #{self.songs[response.to_i - 1]}"
    elsif self.songs.include?(response)
      puts "Now playing #{response}"
    else
      puts "sorry, please enter a valid song or type 'help' for more options."
    end
  end

  def exit
    "Goodbye!"
  end
end

