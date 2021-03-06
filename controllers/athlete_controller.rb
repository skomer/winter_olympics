require_relative '../models/athlete.rb'

# index
get '/athletes' do
  @athletes = Athlete.all()
  erb(:'athletes/index')
end

# new
get '/athletes/new' do
  @nations = Nation.all()
  erb(:'athletes/new')
end

# create
post '/athletes' do
  @athlete = Athlete.new(params)
  @athlete.save()
  erb(:'athletes/create')
end

# show
get '/athletes/:id' do
  @athlete = Athlete.athlete(params[:id])
  erb(:'athletes/show')
end

# edit

# update

# delete