# Homework:
# Task: Choose a real-world object to model (e.g., Book, Student, Animal) and create a class.
# Instructions:
# Define a class with an initialize method.
# Use attr_accessor for attributes (or attr_reader/attr_writer if the users shouldn't have access to everything).
# Add at least one custom method that performs an action (ex. info_about_user from the Person class).

# Class SteamLibrary
class SteamLibrary
  attr_accessor :title, :genre, :players

  def initialize(title, genre, players)
    @title = title
    @genre = genre
    @players = players
  end

  # Custom method to give information about the game
  def info
    return "#{@title} is a #{@genre} game for #{@players} player(s)."
  end

  # Custom method to check if it's multiplayer
  def multiplayer?
    return @players > 1
  end
end

# Creating instances for your games
game1 = Game.new("Cyberpunk 2077", "Action RPG", 1)
game2 = Game.new("Tekken", "Fighting", 2)  # multiplayer game

# Display information
p game1.info          # "Cyberpunk 2077 is a Action RPG game for 1 player(s)."
p game1.multiplayer?  # false

p game2.info          # "Peak is a Adventure game for 4 player(s)."
p game2.multiplayer?  # true
