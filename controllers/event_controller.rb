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
  athletes = Event.athletes(params[:id])
  @athletes_events = Athlete.full_names(athletes)
  @event = Event.event(params[:id])
  erb(:'events/show')
end

# edit

# update

# delete