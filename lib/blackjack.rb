def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
1 + rand(10)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
end


def initial_round
card1 = deal_card
card2 = deal_card
total = card1 + card2 
display_card_total(total)
total
end

def hit?(total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    total = total + deal_card
    return total
    elsif user_input == "s"
    return total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    total = hit? (total)
    display_card_total(total)
end

end_game(total)
end
    
