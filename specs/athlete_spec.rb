require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/athlete.rb'

class TestAthlete < MiniTest::Test

  def setup
    options = {
      'first_name' => "Jenny",
      'last_name' => "Jones",
      'name_convention' => "first last",
      'nation_id' => nil
    }
    @athlete = Athlete.new(options)
  end

  def test_athlete_has_last_name
    assert_equal("Jones", @athlete.last_name)
  end



end