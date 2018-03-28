CHASE = ["British Airways", "Air France/KLM", "Korean Air", "Singapore Airlines", "Southwest", "United Airlines", "Virgin Atlantic", "Aer Lingus", "Iberia Airlines", "Hyatt", "IHG", "Marriott", "Ritz-Carlton"]

AMEX = ["Air Canada", "Alitalia", "Cathay Pacific", "British Airway", "Delta Air Lines", "Etihad", "Hilton", "SPG"]

CITI = ["JetBlue", "Turkish Airlines", "Cathay Pacific", "Avianca", "Etihad", "EVA Air", "Air France/KLM", "Garuda Indonesia", "Malaysia Airlines", "Qantas", "Qatar Airways", "Singapore Airlines", "Thai Airways", "Virgin Atlantic"]

ONEWORLD = ["American Airlines", "British Airways", "Cathay Pacific", "Finnair", "Iberia Airlines", "Japan Airlines", "LATAM", "Malaysia Airlines", "Qantas", "Qatar Airways", "Royal Jordanian", "SriLankan Airlines", "S7 Airlines", ]

STARALLIANCE = ["Adria Airways", "Aegean Airlines", "Air Canada", "Air China", "Air India", "Air New Zealand", "All Nippon Airways", "Asiana Airlines", "Austrian Airlines", "Avianca", "Brussels Airlines", "Copa Airlines", "Croatia Airlines", "EgyptAir", "Ethiopian Airlines", "EVA Air", "LOT Polish Airlines", "Lufthansa", "Scandavian Airlines", "Shenzen Airlines", "Singapore Airlines", "South African Airways", "Swiss International Air Lines", "Tap Portugal", "Thai Airways", "Turkish Airlines", "United Airlines"]

SKYTEAM = ["Aeroflot", "Aerolineas Argentias", "Aeromexico", "Air Europa", "Air France/KLM", "Alitalia", "China Airlines", "China Eastern Airlines", "China Southern Airlines", "Czech Airlines", "Delta Air Lines", "Garuda Indonesia", "Kenya Airways", "Korean Air", "Middle East Airlines", "Saudia", "TAROM", "Vietnam Airlines", "XiamenAir"]


def welcome
    puts "Welcome! Please choose your loyalty program:"
    puts "Amex"
    puts "Chase"
    puts "Citi"

    #Currently no CLI active
    #input = gets.strip.downcase

    #checks if input is valid
    if valid_input?(input)
      #lists transfer options if valid
      transfer_options(input)


    else
      #runs welcome until a user enters a valid input
      welcome
    end #end if/else

end #ends welcome

def valid_input? (input)
  #if statement verifies valid input to continue
  if input == "amex"
    return true

  elsif input == "chase"
    return true

  elsif input == "citi"
    return true
  end #ends if/else statement

end #ends valid_input?


def transfer_options (input)
  puts "You have selected the #{input.capitalize} loyalty program"
  puts "You can transfer your points to the following airlines and hotel chains:"
  puts " "

    if input == "amex" || input == "Amex"
      puts AMEX
      return AMEX

    elsif input == "chase" || input == "Chase"
      puts CHASE
      return CHASE

    elsif input == "citi" || input == "Citi"
      puts CITI
      return CITI

    end #ends if/else statement

end



def alliance_bookings (input)

    puts " "
    puts "Using airline alliance and partner benefits, you can book flights on other airlines."
    puts "Please input one of the above airlines to see more booking possibilities."

    #currently no CLI active
    #user_selection = gets.strip

    #if valid_airline? (user_selection, transfer_options (input))
    if valid_airline?(user_selection, program_list)

      puts "You can book flights on these airlines by transferring your points to #{user_selection}:"
      puts search_alliances (user_selection)

    else
      alliance_bookings
    end #ends if/else

    search_alliances (airline_search)

end #ends alliance_bookings


def valid_airline?(user_selection, program_list)

      if program_list.include? user_selection
        return true

      else
        return false
      end

end  #ends #valid_airline?



def search_alliances (user_selection)

      if ONEWORLD.include? user_selection
        puts "#{user_selection} is a member of the Oneworld alliance. These are its partners:"
        puts ONEWORLD
        return ONEWORLD

      elsif STARALLIANCE.include? user_selection
        puts "#{user_selection} is a member of the Star Alliance alliance. These are its partners:"
        puts STARALLIANCE
        return STARALLIANCE

      elsif SKYTEAM.include? user_selection
        puts "#{user_selection} is a member of the Skyteam alliance. These are its partners:"
        puts SKYTEAM
        return SKYTEAM

      else
        puts "This airline is not part of an alliance"

      end #ends if/elsif/else

end #ends #search_alliances

def start_over

  puts "Would you like to see more options from the beginning?"

  #CLI is not active
  #restart_input = gets.downcase.strip

  if restart_input == "yes" || restart_input == "y"
    welcome

  else
    #terminate program
    #exit
end
