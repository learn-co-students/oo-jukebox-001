require 'pry'
class Jukebox

  attr_accessor :songs, :input

    
  def initialize(songs)
    @songs = songs
    @commands = ["help", "list", "play", "exit"]
  end

  def call
    puts "Welcome to the Jukebox! Type 'help' to see the list of available commands"
    do_command
  end

  def help
    @commands.each do |command|
      puts "#{command} \n"
    end
  end

  def get_input
    "Enter a command:"
    @input = gets.chomp
    if @commands.include?(@input) == false
      get_input
    end
  end

  def do_command
    get_input
    if @input == "list"
      list
    elsif @input == "play"
      play
    elsif @input == "help"
      help
    elsif @input == "exit"
    end

  end

  def list
    puts @songs
  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above\n"
    song_choice = gets.chomp
    if @songs.include?(song_choice) == true
      puts "Now playing: #{song_choice}\n"
    elsif @songs.count >= song_choice.to_i && song_choice.to_i > 0
      puts "Now playing: #{@songs[song_choice.to_i - 1]}\n"
    else
      puts "sorry, please enter a valid song or type 'help' for more options.\n"
    end
  end

end

