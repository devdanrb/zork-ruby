# -*- encoding: utf-8 -*-
require 'readline'

class Game
  attr_accessor :player

  @@messages = {
    :help => [
      "Commands:",
      "- \\quit: stop the game",
      "- \\help: display this help message"
    ].join("\n"),
    :quit => [
      "You have quit the game."
    ].join("\n"),
    :unknown_command => "I can't understand that.",
    :room_not_found => "There is no room there.",
    :welcome => [
      "Welcome to this Zork-like game!",
      "The goal of this game for you is to find a way out of this labyrinth.",
      "Good luck!"
    ].join("\n")
  }

  def initialize player
    @player = player
  end

  def prompt
    @input = Readline.readline("> ", true)
  end

  def start
    puts @@messages[:welcome]

    loop do
      puts @player
        .map
        .get_room(@player.position[:i], @player.position[:j])
        .description

      # Show the current position on the map
      #puts "Current position: " + @player.position.inspect

      self.prompt

      # by default, we'll accept any command,
      # we'll later check if it exists
      result = true

      case @input
      when "\\quit"
        puts @@messages[:quit]
        break
      when "\\help"
        puts @@messages[:help]
      when "go west"
        result = @player.go_west
      when "go east"
        result = @player.go_east
      when "go north"
        result = @player.go_north
      when "go south"
        result = @player.go_south
      else
        puts @@messages[:unknown_command]
      end

      if result == false
        puts @@messages[:room_not_found]
      end
    end
  end
end