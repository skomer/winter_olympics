require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative 'controllers/athlete_controller.rb'
require_relative 'controllers/nation_controller.rb'
require_relative 'controllers/event_controller.rb'
require_relative 'controllers/medal_controller.rb'
require_relative 'controllers/athlete_event_controller.rb'
require_relative 'models/nation.rb'

get '/' do
  @nations = Nation.all()
  @athletes = Athlete.all()
  @events = Event.all()
  erb :home
end