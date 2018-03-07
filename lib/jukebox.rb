

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts 'I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program'
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index+1}. #{song}" }
end

def play(songs)
   list(songs)
   puts
   puts "What song do you want to play. Enter song name or number"
   input = gets.chomp.downcase

     if songs.include?(input)
       puts "Now playing song #{input}"
     elsif songs[input.to_i - 1]
       puts "Now playing #{songs[input.to_i - 1]}"
     else
       puts "Invalid input. Please try again"
     end
 end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
response = gets.downcase.chomp

case response
when "help"
  help
when "list"
  list
when "play"
  play
when "exit"
  exit_jukebox
  end
end
