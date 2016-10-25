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
nation8 = Nation.new({ 'name' => "Austria" })
nation9 = Nation.new({ 'name' => "USA" })
nation10 = Nation.new({ 'name' => "China" })
nation11 = Nation.new({ 'name' => "Denmark" })
nation12 = Nation.new({ 'name' => "Switzerland" })

nation1.save()
nation2.save()
nation3.save()
nation4.save()
nation5.save()
nation6.save()
nation7.save()
nation8.save()
nation9.save()
nation10.save()
nation11.save()
nation12.save()


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

athlete9 = Athlete.new({
  'first_name' => "Seiko",
  'last_name' => "Fujikawa",
  'name_convention' => "first last",
  'nation_id' => 1
  })

athlete10 = Athlete.new({
  'first_name' => "Kentaro",
  'last_name' => "Minagawa",
  'name_convention' => "first last",
  'nation_id' => 1
  })

athlete11 = Athlete.new({
  'first_name' => "Solveig",
  'last_name' => "Hansen",
  'name_convention' => "first last",
  'nation_id' => 3
  })

athlete12 = Athlete.new({
  'first_name' => "Kenneth",
  'last_name' => "Sivertsen",
  'name_convention' => "first last",
  'nation_id' => 3
  })

athlete13 = Athlete.new({
  'first_name' => "Finn Christian",
  'last_name' => "Jagge",
  'name_convention' => "first last",
  'nation_id' => 3
  })

athlete14 = Athlete.new({
  'first_name' => "Michael",
  'last_name' => "Williams",
  'name_convention' => "first last",
  'nation_id' => 4
  })

athlete15 = Athlete.new({
  'first_name' => "Neil",
  'last_name' => "Cushley",
  'name_convention' => "first last",
  'nation_id' => 4
  })

athlete16 = Athlete.new({
  'first_name' => "John",
  'last_name' => "Kerr",
  'name_convention' => "first last",
  'nation_id' => 4
  })

athlete17 = Athlete.new({
  'first_name' => "Kevin",
  'last_name' => "Hill",
  'name_convention' => "first last",
  'nation_id' => 5
  })

athlete18 = Athlete.new({
  'first_name' => "Francois",
  'last_name' => "Boivin",
  'name_convention' => "first last",
  'nation_id' => 5
  })

athlete19 = Athlete.new({
  'first_name' => "Marianne",
  'last_name' => "Leeson",
  'name_convention' => "first last",
  'nation_id' => 5
  })

athlete20 = Athlete.new({
  'first_name' => "Jenna",
  'last_name' => "Blasman",
  'name_convention' => "first last",
  'nation_id' => 5
  })

athlete21 = Athlete.new({
  'first_name' => "Thomas",
  'last_name' => "Girod",
  'name_convention' => "first last",
  'nation_id' => 6
  })

athlete22 = Athlete.new({
  'first_name' => "Ted",
  'last_name' => "Piccard",
  'name_convention' => "first last",
  'nation_id' => 6
  })

athlete23 = Athlete.new({
  'first_name' => "Arnaud",
  'last_name' => "Burille",
  'name_convention' => "first last",
  'nation_id' => 6
  })

athlete24 = Athlete.new({
  'first_name' => "Elena",
  'last_name' => "Prosteva",
  'name_convention' => "first last",
  'nation_id' => 7
  })

athlete25 = Athlete.new({
  'first_name' => "Svetlana",
  'last_name' => "Sleptsova",
  'name_convention' => "first last",
  'nation_id' => 7
  })

athlete26 = Athlete.new({
  'first_name' => "Andrey",
  'last_name' => "Yurkov",
  'name_convention' => "first last",
  'nation_id' => 7
  })

athlete27 = Athlete.new({
  'first_name' => "Christian",
  'last_name' => "Hackl",
  'name_convention' => "first last",
  'nation_id' => 8
  })

athlete28 = Athlete.new({
  'first_name' => "Johannes",
  'last_name' => "Wipplinger",
  'name_convention' => "first last",
  'nation_id' => 8
  })

athlete29 = Athlete.new({
  'first_name' => "Anna",
  'last_name' => "Fenninger",
  'name_convention' => "first last",
  'nation_id' => 8
  })

athlete30 = Athlete.new({
  'first_name' => "Linlin",
  'last_name' => "Sun",
  'name_convention' => "last first",
  'nation_id' => 10
  })

athlete31 = Athlete.new({
  'first_name' => "Xinxin",
  'last_name' => "Guo",
  'name_convention' => "last first",
  'nation_id' => 10
  })

athlete32 = Athlete.new({
  'first_name' => "Zhongqing",
  'last_name' => "Liu",
  'name_convention' => "last first",
  'nation_id' => 10
  })

athlete33 = Athlete.new({
  'first_name' => "Chengye",
  'last_name' => "Zhang",
  'name_convention' => "last first",
  'nation_id' => 10
  })

athlete34 = Athlete.new({
  'first_name' => "Andy",
  'last_name' => "Newell",
  'name_convention' => "first last",
  'nation_id' => 9
  })

athlete35 = Athlete.new({
  'first_name' => "Kikkan",
  'last_name' => "Randall",
  'name_convention' => "first last",
  'nation_id' => 9
  })

athlete36 = Athlete.new({
  'first_name' => "Jonas Thor",
  'last_name' => "Olsen",
  'name_convention' => "first last",
  'nation_id' => 11
  })

athlete37 = Athlete.new({
  'first_name' => "Nadia",
  'last_name' => "Styger",
  'name_convention' => "first last",
  'nation_id' => 12
  })

athlete1.save()
athlete2.save()
athlete3.save()
athlete4.save()
athlete5.save()
athlete6.save()
athlete7.save()
athlete8.save()
athlete9.save()
athlete10.save()
athlete11.save()
athlete12.save()
athlete13.save()
athlete14.save()
athlete15.save()
athlete16.save()
athlete17.save()
athlete18.save()
athlete19.save()
athlete20.save()
athlete21.save()
athlete22.save()
athlete23.save()
athlete24.save()
athlete25.save()
athlete26.save()
athlete27.save()
athlete28.save()
athlete29.save()
athlete30.save()
athlete31.save()
athlete32.save()
athlete33.save()
athlete34.save()
athlete35.save()
athlete36.save()
athlete37.save()


event1 = Event.new({
  'title' => "Skiathlon",
  'venue' => "Alpensia Sports Park"
  })

event2 = Event.new({
  'title' => "15km Cross Country Free",
  'venue' => "Alpensia Sports Park"
  })

event3 = Event.new({
  'title' => "Curling",
  'venue' => "Gangneung Olympic Park"
  })

event4 = Event.new({
  'title' => "Luge",
  'venue' => "Alpensia Sports Park"
  })

event5 = Event.new({
  'title' => "Skeleton",
  'venue' => "Alpensia Sports Park"
  })

event6 = Event.new({
  'title' => "Halfpipe",
  'venue' => "Jeongseon Alpine Centre"
  })

event7 = Event.new({
  'title' => "Super-G",
  'venue' => "Alpensia Sports Park"
  })

event8 = Event.new({
  'title' => "Giant Slalom",
  'venue' => "Alpensia Sports Park"
  })

event9 = Event.new({
  'title' => "Ski Cross",
  'venue' => "Jeongseon Alpine Centre"
  })

event10 = Event.new({
  'title' => "Moguls",
  'venue' => "Jeongseon Alpine Centre"
  })

event11 = Event.new({
  'title' => "Ski Jump",
  'venue' => "Jeongseon Alpine Centre"
  })

event12 = Event.new({
  'title' => "Figure Skating",
  'venue' => "Gangneung Olympic Park"
  })

event13 = Event.new({
  'title' => "Speed Skating",
  'venue' => "Gangneung Olympic Park"
  })

event14 = Event.new({
  'title' => "Bobsleigh",
  'venue' => "Jeongseon Alpine Centre"
  })

event1.save()
event2.save()
event3.save()
event4.save()
event5.save()
event6.save()
event7.save()
event8.save()
event9.save()
event10.save()
event11.save()
event12.save()
event13.save()
event14.save()


athlete_event1 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 1,
  'event_id' => 1,
  'medal_id' => 1
  })

athlete_event2 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 2,
  'event_id' => 1,
  'medal_id' => 2
  })

athlete_event3 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 3,
  'event_id' => 1,
  'medal_id' => 3
  })

athlete_event4 = AthleteEvent.new({
  'position' => 4,
  'athlete_id' => 4,
  'event_id' => 1,
  'medal_id' => 4
  })

athlete_event5 = AthleteEvent.new({
  'position' => 5,
  'athlete_id' => 5,
  'event_id' => 1,
  'medal_id' => 4
  })

athlete_event6 = AthleteEvent.new({
  'position' => 6,
  'athlete_id' => 6,
  'event_id' => 1,
  'medal_id' => 4
  })

athlete_event7 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 7,
  'event_id' => 2,
  'medal_id' => 1
  })

athlete_event8 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 31,
  'event_id' => 2,
  'medal_id' => 2
  })

athlete_event9 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 11,
  'event_id' => 2,
  'medal_id' => 3
  })

athlete_event10 = AthleteEvent.new({
  'position' => 4,
  'athlete_id' => 7,
  'event_id' => 2,
  'medal_id' => 4
  })

athlete_event11 = AthleteEvent.new({
  'position' => 5,
  'athlete_id' => 24,
  'event_id' => 2,
  'medal_id' => 4
  })

athlete_event12 = AthleteEvent.new({
  'position' => 6,
  'athlete_id' => 27,
  'event_id' => 2,
  'medal_id' => 4
  })

athlete_event13 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 37,
  'event_id' => 3,
  'medal_id' => 1
  })

athlete_event14 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 30,
  'event_id' => 3,
  'medal_id' => 2
  })

athlete_event15 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 21,
  'event_id' => 3,
  'medal_id' => 3
  })

athlete_event16 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 4,
  'event_id' => 4,
  'medal_id' => 1
  })

athlete_event17 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 8,
  'event_id' => 4,
  'medal_id' => 2
  })

athlete_event18 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 16,
  'event_id' => 4,
  'medal_id' => 3
  })

athlete_event19 = AthleteEvent.new({
  'position' => 4,
  'athlete_id' => 20,
  'event_id' => 4,
  'medal_id' => 4
  })

athlete_event20 = AthleteEvent.new({
  'position' => 5,
  'athlete_id' => 36,
  'event_id' => 4,
  'medal_id' => 4
  })

athlete_event21 = AthleteEvent.new({
  'position' => 6,
  'athlete_id' => 35,
  'event_id' => 4,
  'medal_id' => 4
  })

athlete_event22 = AthleteEvent.new({
  'position' => 7,
  'athlete_id' => 13,
  'event_id' => 4,
  'medal_id' => 4
  })

athlete_event23 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 10,
  'event_id' => 5,
  'medal_id' => 1
  })

athlete_event24 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 5,
  'event_id' => 5,
  'medal_id' => 2
  })

athlete_event25 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 11,
  'event_id' => 5,
  'medal_id' => 3
  })

athlete_event26 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 17,
  'event_id' => 6,
  'medal_id' => 1
  })

athlete_event27 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 18,
  'event_id' => 6,
  'medal_id' => 2
  })

athlete_event28 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 32,
  'event_id' => 6,
  'medal_id' => 3
  })

athlete_event29 = AthleteEvent.new({
  'position' => 1,
  'athlete_id' => 22,
  'event_id' => 7,
  'medal_id' => 1
  })

athlete_event30 = AthleteEvent.new({
  'position' => 2,
  'athlete_id' => 35,
  'event_id' => 7,
  'medal_id' => 2
  })

athlete_event31 = AthleteEvent.new({
  'position' => 3,
  'athlete_id' => 3,
  'event_id' => 7,
  'medal_id' => 3
  })

athlete_event32 = AthleteEvent.new({
  'position' => 4,
  'athlete_id' => 12,
  'event_id' => 7,
  'medal_id' => 4
  })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })
# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

# athlete_event1 = AthleteEvent.new({
#   'position' => ,
#   'athlete_id' => ,
#   'event_id' => ,
#   'medal_id' => 
#   })

athlete_event1.save()
athlete_event2.save()
athlete_event3.save()
athlete_event4.save()
athlete_event5.save()
athlete_event6.save()
athlete_event7.save()
athlete_event8.save()
athlete_event9.save()
athlete_event10.save()
athlete_event11.save()
athlete_event12.save()
athlete_event13.save()
athlete_event14.save()
athlete_event15.save()
athlete_event16.save()
athlete_event17.save()
athlete_event18.save()
athlete_event19.save()
athlete_event20.save()
athlete_event21.save()
athlete_event22.save()
athlete_event23.save()
athlete_event24.save()
athlete_event25.save()
athlete_event26.save()
athlete_event27.save()
athlete_event28.save()
athlete_event29.save()
athlete_event30.save()
athlete_event31.save()
athlete_event32.save()





