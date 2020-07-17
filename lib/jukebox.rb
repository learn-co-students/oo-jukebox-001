class Jukebox
attr_accessor :songs, :input
Commands = ["help", "list", "play", "exit"]

def initialize (songs)
  @songs = songs
end

def help
  Commands.each {|command| puts "--#{command}"}
end

def get_input
  puts "Enter a command:"
  self.input = gets.chomp
end

def call
  puts "Welcome to the Jukebox! Type 'help' to see the list of available commands"
  
    until self.input == "exit"
      do_command
    end
end

def do_command
  case get_input
   when "help"
    self.help
   when "play"
    self.play
   when "list"
    self.list
  end
end

def list
  songs.each_with_index {|song, index| puts"#{index}. #{song}"}
end

def play
  puts "Enter a song number or enter the artist and song title, as shown in the list above"
  input = gets.chomp
  if (1..songs.size).map{|i| i.to_s}.include?(input)
    puts "Now playing: #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Now playing #{input}"
  else
    puts "sorry, please enter a valid song or type 'help' for more options."
  end
end

end
