require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib",__FILE__)

require 'board'
require 'player'
require 'game'
require 'boardcase'
require 'application'

game_start = Application.new.perform