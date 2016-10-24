require_relative './models/athlete.rb'
require_relative './models/athlete_event.rb'
require_relative './models/event.rb'
require_relative './models/medal.rb'
require_relative './models/nation.rb'

require 'pry-byebug'

nation1 = Nation.new({ 'name' => "Japan" })
nation1.save()

nation2 = Nation.new({ 'name' => "South Korea" })
nation2.save()

athlete1 = Athlete.new({
  'first_name' => "Hyun-Ju",
  'last_name' => "Kim",
  'name_convention' => "last first",
  'nation_id' => 2
  })
athlete1.save()

athlete2 = Athlete.new({
  'first_name' => "Min-Ho",
  'last_name' => "Lee",
  'name_convention' => "last first",
  'nation_id' => 2
  })
athlete2.save()

event1 = Event.new({
  'title' => "Skiathlon",
  'venue' => "Alpensia",
  'status' => "Not occurred"
  })
event1.save()

event2 = Event.new({
  'title' => "15km Cross Country Free",
  'venue' => "Alpensia",
  'status' => "Occurred"
  })
event2.save()

event3 = Event.new({
  'title' => "Curling",
  'venue' => "Gangneung",
  'status' => "Cancelled"
  })
event3.save()

















