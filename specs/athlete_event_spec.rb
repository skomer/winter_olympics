require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/athlete_event.rb'

class TestAthleteEvent < MiniTest::Test

  def setup
    options = {
      'status' => "",
      'position' => "",
      'athlete_id' => 76,
      'event_id' => 12,
      'medal_id' => 0
    }
    @athlete_event = AthleteEvent.new(options)
  end

  def test_athlete_event_has_event_id
    assert_equal(12, @athlete_event.event_id)
  end


end