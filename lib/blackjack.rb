
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  
gets.chomp  # code #get_user_input here
end

def end_game (total)
 puts "Sorry, you hit #{total}. Thanks for playing!"
# code #end_game here
end

def initial_round
  deal_card
  deal_card
  total = deal_card + deal_card 
  display_card_total (total)
    
    return total
 
  # code #initial_round here
end
def invalid_command
 puts "Please enter a valid command" 
 prompt_user
  get_user_input
  
  # code invalid_command here
end


def hit?(total)
 
  prompt_user 
  input = get_user_input
 
  if input == 's'
 total 
 
 elsif input == 'h'
  
total = total + deal_card
else
  invalid_command
   # code hit? here
end
end


def runner
  
  welcome
  initial_round
    hit?(total) 
    total = 0
  while total < 21
  initial_round
 display_card_total(total)
  end
  end_game(total)
  # code runner here

end
    
