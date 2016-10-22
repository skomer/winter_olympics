require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/medal.rb'

class TestMedal < MiniTest::Test

  def setup
    options = {
      'type' => 'gold'
    }
    @medal = Medal.new(options)
  end

  def test_medal_is_gold
    assert_equal("gold", @medal.type)
  end

end