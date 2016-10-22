require 'pry-byebug'
require_relative '../models/nation.rb'

# index
get '/nations' do
  @nations = Nation.all()
  binding.pry
  erb(:'nations/index')
end

# new

# create

# show

# edit

# update

# delete