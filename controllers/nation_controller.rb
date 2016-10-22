require 'pry-byebug'
require_relative '../models/nation.rb'

# index
get '/nations' do
  @nations = Nation.all()
  erb(:'nations/index')
end

# new
get '/nations/new' do
  erb(:'nations/new')
end

# create
post '/nations' do
  @nation = Nation.new(params)
  @nation.save()
  erb(:'/nations/create')
end

# show


# edit

# update

# delete