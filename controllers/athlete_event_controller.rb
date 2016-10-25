require_relative '../models/athlete_event.rb'

# index

# new
get '/athletes_events/new' do
  @athletes = Athlete.all()
  @events = Event.all()
  erb(:'athletes_events/new')
end

# create
post '/athletes_events' do
  @athlete_event = AthleteEvent.new(params)
  @athlete_event.save()
  erb(:'/athletes_events/create')
end

# show

# edit

# update

# delete