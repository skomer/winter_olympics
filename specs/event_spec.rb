require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/event.rb'

class TestEvent < MiniTest::Test

  def setup
    options = {
      'title' => "Alpine Super G",
      'venue' => "Jeongseon",
      'status' => "not occurred"
    }
    @event = Event.new(options)
  end

  def test_event_status
    assert_equal("not occurred", @event.status)
  end

  


end