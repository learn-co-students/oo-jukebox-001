# stub requires a method name, and .and_return following it.
# example: HomeLoan.stub!(interest_rate).and_return(‘5.5%’)

require 'pry'

class Jukebox

  attr_accessor :songs, :input

  def initialize(song_arr)
    @songs = song_arr
  end

  def help
    puts "help\nlist\nplay\nexit"
  end

  def get_input
    print "Enter a command:"
    @input = gets.chomp
  end

  def list
    # puts song in spec format
    @songs.each_with_index do |song, index|
      puts "#{index + 1} #{song}"
    end
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
    when "exit"
      exit
    else
      "invalid command"
    end
  end

=begin this shows up as an array
      1   Phoenix - 1901
      2   Tokyo Police Club - Wait Up
      3   Sufjan Stevens - Too Much
      4   The Naked and the Famous - Young Blood
      5   (Far From) Home - Tiga
      6   The Cults - Abducted
      7   Phoenix - Consolation Prizes
      8   Harry Chapman - Cats in the Cradle
      9   Amos Lee - Keep It Loose, Keep It Tight
=end

=begin
@songs =     [
      "Phoenix - 1901",
      "Tokyo Police Club - Wait Up",
      "Sufjan Stevens - Too Much",
      "The Naked and the Famous - Young Blood",
      "(Far From) Home - Tiga",
      "The Cults - Abducted",
      "Phoenix - Consolation Prizes",
      "Harry Chapman - Cats in the Cradle",
      "Amos Lee - Keep It Loose, Keep It Tight"
    ]
=end

  def play
    puts "Enter a song number or enter the artist and song title, as shown in the list above\n"
    user_input = gets.chomp
    if (1..self.songs.count).to_a.include?(user_input.to_i)
      puts "Now playing: #{self.songs[user_input.to_i - 1]}"
    elsif self.songs.include?(user_input)
      puts "Now playing #{user_input}"
    else
      puts "sorry, please enter a valid song or type 'help' for more options."
    end
  end

  def call
    # this is responsible for executing all the methods
    print "Welcome to the Jukebox! Type 'help' to see the list of available commands"
  end

end
