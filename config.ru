ENV['RACK_ENV'] ||= 'development'

require './application'

run Application.new
