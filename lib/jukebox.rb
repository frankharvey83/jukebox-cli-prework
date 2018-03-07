

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



def list(songs)
  songs.each_with_index { |song, index| puts "#{index+1}. #{item}" }
end

def play(songs)
  puts "Please enter a song name or number: "
  input = gets.chomp

  songs.each_with_index do |song, index|
  if songs.include? input || input.to_i == index+1
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
    end
  end
end
