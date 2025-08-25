#--------------------------------------------#
#VARIABLES 
#--------------------------------------------#
# Write a program that uses a variable to store a number with decimals, then prints the number as an integer.
  # room_temp = 75.53

  # puts room_temp.to_i

# Write a program that uses a variable to store a number, then prints the number squared.

  # a = 9

  # puts a ** 2

# Write a program that uses a variable to store a word, then prints the word with all lowercase letters.

  # waffles = "PANCAKES"

  # puts waffles.downcase

#--------------------------------------------#
#CONDITIONALS
#--------------------------------------------#
#Use a variable to store a string, then write a condition that prints "Valid email" if the string contains the @ symbol, and prints "Invalid email" otherwise.
  # email = "hafaadaiyahoo.com"
  #   if email.include?("@")
  #     puts "valid email"
  #   else
  #     puts "invalid email"
  # end

# Use variables to store a password and password confirmation, then write a condition that prints "Password doesn't match" if the two are different, and prints "Password confirmed" if they are the same.
  # password1 = "the"
  #   password_confirmation = "the"
  #   if password1 == password_confirmation
  #   puts "Password confirmed"
  #     else
  #   puts "Password doesn't match"
  # end

# Use a variable to store a number, then write a condition that prints "Passing grade" if the number is greater than or equal to 70, and prints "Failing grade" otherwise.

  # number = 70

  # if number >= 70
  #   puts "Passing Grade"
  # else
  #   puts "FAILLL"
  # end

#--------------------------------------------#
#LOOPS
#--------------------------------------------#
# Write a while loop that prints the phrase "Pacific Paradise" 12 times.
  # count = 0 
  # while count < 12
  #   puts "Pacific Paradise"
  #   count = count + 1 
  # end


# Write a while loop that asks the user to enter a number and will run forever until the user enters a number less than 0.
  # while true
  #   puts "Enter ocean depth in feet: "
  #   input = gets.chomp
  #   if input.to_i < 0 
  #     break
  #   end
  # end


#WRITE A WHILE LOOP THAT PRINTS THE NUMBERS 100, 90, 80

  #   countdown = 100
  # while countdown >= 0
  #   puts countdown
  #   countdown = countdown - 10
  # end
#--------------------------------------------#
#ARRAYS-HASHES
#--------------------------------------------#
#Create an array to store 5 numbers. Then print out each number multiplied by 3 on separate lines with a while loop.
      #   # Create an array (list) to store 5 numbers
      # # Create an array to store 5 numbers
      # numbers = [2, 4, 6, 8, 10]

      # # Initialize the index for the while loop
      # i = 0

      # # Loop through the array
      # while i < numbers.length
      #   puts numbers[i] * 3
      #   i += 1
      # end

#Create a hash to store a person's first name, last name, and hometown. Then print the hash on one line.
    # person = {
    #   first_name: "Adrian",
    #   last_name: "Cabradilla",
    #   hometown: "Wakanda"
    # }

    # # Print the hash on one line
    # pp person

#Create a hash to store the beach name, water temperature, and visibility. Then print each hash key and value on separate lines.
    # beach_info = {
    #   name: "Gun Beach",
    #   water_temperature: 78,
    #   visibility: "Clear"
    # }

    # # Print each key and value on separate lines
    # beach_info.each do |key, value|
    #   puts "#{key}: #{value}"
    # end

