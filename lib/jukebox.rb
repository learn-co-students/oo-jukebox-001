require 'pry'

class Jukebox
  attr_accessor :songs, :input

  def initialize(songs)
    @songs = songs
  end

  def help
    puts "help"
    puts "list"
    puts "play"
    puts "exit"
  end

  def call
    self.help
    self.do_command
  end

  def get_input
    puts "Enter a command:"
    @input = gets.chomp
  end

  def do_command
    get_input

    case @input
    when "list"
      self.list
    when "play"
      self.play
    when "help"
      self.help
    end
  end

  def list
    @songs.each_with_index do |song, index|
      puts "#{index + 1} - #{song}"
    end
  end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above"
    resp = gets.chomp

    if @songs.include?(resp)
      puts "Now playing #{resp}"
    elsif Array(1..@songs.length).include?(resp.to_i)
      puts "Now playing: #{@songs[resp.to_i - 1]}"
    else
      puts "sorry, please enter a valid song or type 'help' for more options."
    end
  end

end