class Jukebox

  attr_accessor :songs, :input

  songs = []

  def initialize(songs)
    @songs = songs
  end

  def call
    puts "Welcome to the Jukebox! Type 'help' to see the list of available commands"
    do_command
  end

  def help
    puts "List of available commands:"
    puts "help"
    puts "list"
    puts "play"
    puts "exit"
  end

  def get_input
    puts  "Enter a command:"
    @input = gets.chomp
  end

  def do_command
    get_input
    case @input
    when "help"
      help
    when "list"
      list
    when "pllay"
      play
    when "exit"
      exit
    end
  end

  def list
    @songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}

  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above"
    choice = gets.chomp
    if choice.to_i == 0
      puts  "Now playing #{choice}"
    elsif choice.to_i > 0 && choice.to_i <= @songs.count
      puts "Now playing: #{@songs[(choice.to_i) - 1]}"
    else puts "sorry, please enter a valid song or type 'help' for more options."
    end
  end

  def exit
  end
end



