require_relative '../models/athlete_event.rb'

# index

# new
get '/athletes_events/new' do
  @athletes = Athlete.all()
  @events = Event.all()
  erb(:'athletes_events/new')
end


# create

# show

# edit

# update

# delete