$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'pry'

# binding.pry
Router.new.perform
