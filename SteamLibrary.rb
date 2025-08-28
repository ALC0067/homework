# Exercise/Homework:
# Task: Plan and then create a program that utilizes inheritance and polymorphism to model a real-world scenario.
# Instructions:
# Choose a scenario, such as a library system, zoo management, or school administration.
# Identify the classes needed, along with their attributes and methods.
# Determine the superclass and subclasses.
# Decide how polymorphism and method overriding will be used.


#Scenario:
  #Steam Game Library

#Classes:
  #Superclass = Game
      #Title
      #Developer
      #Release Year
    #Methods 
      #Info - Prints Game Details
      #Play - Play the game
  #Subclasses = Game genres
    #Action
      #Extra: Difficulty
      #Overrride play > describes gameplay
    #Puzzle
      #Extra: Difficulty
      #Overrride play > describes number of levels
    #RPG
        #Extra: Difficulty
      #Overrride play > describes story

# Superclass for all games
class Game
  def initialize(title, developer, year)
    @title = title
    @developer = developer
    @year = year
  end

  def info
    "#{@title} by #{@developer} (#{@year})"
  end

  def play
    "Launching #{@title}"
  end
end

# Subclass for Action games
class ActionGame < Game
  def initialize(title, developer, year, difficulty)
    super(title, developer, year)
    @difficulty = difficulty
  end

  def play
    "Description: Par I heard you like action games. Difficulty Level: #{@difficulty}"
  end
end

# Subclass for Puzzle games
class PuzzleGame < Game
  def initialize(title, developer, year, number_of_levels)
    super(title, developer, year)
    @number_of_levels = number_of_levels
  end

  def play
    "Over #{@number_of_levels} puzzles that will challenge you!"
  end
end

# Subclass for RPG games
class RPGGame < Game
  def initialize(title, developer, year, main_character)
    super(title, developer, year)
    @main_character = main_character
  end

  def play
    "Embark on an epic journey as #{@main_character}!"
  end
end

# Create instances of each game
action_game = ActionGame.new("Flappy Bird", "Nintendo", 2029, "Easy")
puzzle_game = PuzzleGame.new("Pushmo", "Ubisoft", 2009, 1000)
rpg_game = RPGGame.new("Final Fantasy 7", "Square Enix", 1997, "Cloud Strife")

# Store all games in a library array (polymorphism demonstration)
library = [action_game, puzzle_game, rpg_game]

# Iterate over the library and display info + play message
library.each do |game|
  puts game.info
  puts game.play
  puts "-" * 50
end
