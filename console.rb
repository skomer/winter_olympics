require_relative './models/athlete.rb'
require_relative './models/athlete_event.rb'
require_relative './models/event.rb'
require_relative './models/medal.rb'
require_relative './models/nation.rb'

require 'pry-byebug'

nation1 = Nation.new({ 'name' => "Japan" })
nation2 = Nation.new({ 'name' => "South Korea" })
nation3 = Nation.new({ 'name' => "Norway" })
nation4 = Nation.new({ 'name' => "Great Britain" })
nation5 = Nation.new({ 'name' => "Canada" })
nation6 = Nation.new({ 'name' => "France" })
nation7 = Nation.new({ 'name' => "Russia" })
nation1.save()
nation2.save()
nation3.save()
nation4.save()
nation5.save()
nation6.save()
nation7.save()


athlete1 = Athlete.new({
  'first_name' => "Hyun-Ju",
  'last_name' => "Kim",
  'name_convention' => "last first",
  'nation_id' => 2
  })

athlete2 = Athlete.new({
  'first_name' => "Min-Ho",
  'last_name' => "Lee",
  'name_convention' => "last first",
  'nation_id' => 2
  })

athlete3 = Athlete.new({
  'first_name' => "Jenny",
  'last_name' => "Jones",
  'name_convention' => "first last",
  'nation_id' => 4
  })

athlete4 = Athlete.new({
  'first_name' => "Karine",
  'last_name' => "Ruby",
  'name_convention' => "first last",
  'nation_id' => 6
  })

athlete5 = Athlete.new({
  'first_name' => "Aleksandr",
  'last_name' => "Tretyakov",
  'name_convention' => "first last",
  'nation_id' => 7
  })

athlete6 = Athlete.new({
  'first_name' => "Duff",
  'last_name' => "Gibson",
  'name_convention' => "first last",
  'nation_id' => 5
  })

athlete7 = Athlete.new({
  'first_name' => "Amy",
  'last_name' => "Williams",
  'name_convention' => "first last",
  'nation_id' => 4
  })

athlete8 = Athlete.new({
  'first_name' => "Albert",
  'last_name' => "Demchenko",
  'name_convention' => "first last",
  'nation_id' => 7
  })

athlete1.save()
athlete2.save()
athlete3.save()
athlete4.save()
athlete5.save()
athlete6.save()
athlete7.save()
athlete8.save()


event1 = Event.new({
  'title' => "Skiathlon",
  'venue' => "Alpensia"
  })

event2 = Event.new({
  'title' => "15km Cross Country Free",
  'venue' => "Alpensia"
  })

event3 = Event.new({
  'title' => "Curling",
  'venue' => "Gangneung"
  })

event4 = Event.new({
  'title' => "Luge",
  'venue' => "Alpensia"
  })

event5 = Event.new({
  'title' => "Skeleton",
  'venue' => "Alpensia"
  })

event6 = Event.new({
  'title' => "Halfpipe",
  'venue' => "Jeongseon"
  })

event1.save()
event2.save()
event3.save()
event4.save()
event5.save()
event6.save()






