# Code your solution here!

def end_app
#<<<<<<< HEAD
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
  
#=======
end



def run_guessing_game
  puts "Welcome to the Guessing Game"
  puts "Guess a number between 1 - 10"

  inp = gets.chomp
  res = rand(1..10)
  
  if inp == res.to_s
    puts "You guessed the correct number!"
  else
    puts "The computer guessed #{inp.to_i}"
  end

#>>>>>>> adcfa2b2a7e6aa72ac961a72c3390b5b2c6f64a8
end

run_guessing_game