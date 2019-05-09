# Code your solution here!

def end_app
    puts "Goodbye"
    exit
end

def play_again

  puts "( Type y / yes  or n / no )"
  inp = gets.chomp
  if inp == "yes" || inp == "y"
    run_guessing_game
  elsif inp == "no" || inp == "n"
    end_app
  else
    puts "--Invalid Input--"
    play_again
  end
end


def turn
  res = rand(1..10)
  
  puts "Guess a number between 1 - 10 (or type 'exit' to exit)"
  inp = gets.chomp

  

  if inp == res.to_s
    puts "You guessed the correct number!"
  elsif inp == "exit"
    end_app
  else
    puts "The computer guessed #{res}"
  end
  
  puts "Play again?"
  play_again
end


def run_guessing_game
  puts "!-- Welcome to the Guessing Game --!"
  turn
  
end

run_guessing_game