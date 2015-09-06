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
  puts "  help      Shows this command"
  puts "  list      Shows list of songs"
  puts "  play      Play the selected song by id or name"
  puts "  exit      Says goodbye and leaves you forever"
end

def list(items)
  items.each_with_index do |item, idx|
    puts "#{idx}: #{item}"
  end
end

def play(items)
  puts "Enter a song name or its id"
  input = gets.chomp
  if items.include?(input)
    puts "not?"
     puts "Playing #{input}"
  elsif items[input.to_i] && input.to_i > 0
    puts "Playing #{items[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  until command == "exit"
    puts "Please enter a command:"
    command = gets.downcase.strip
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      puts "Your command sucks"
    end
  end
end
