require 'pry-byebug'
require_relative '../models/event.rb'

# index
get '/events' do
  @events = Event.all()
  erb(:'events/index')
end

# new
get '/events/new' do
  erb(:'events/new')
end

# create
post '/events' do
  @event = Event.new(params)
  @event.save()
  erb(:'events/create')
end

# show
get '/events/:id' do
  athletes = Event.find_athletes(params[:id])
  @athletes_events = Athlete.full_names(athletes)
  # binding.pry
  @event = Event.find(params[:id])
  erb(:'events/show')
end

# edit

# update

# delete