require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/event.rb'

class TestEvent < MiniTest::Test

  def setup
    options = {
      'title' => "Alpine Super G",
      'venue' => "Jeongseon Alpine Centre",
    }
    @event = Event.new(options)
  end

  def test_event_title
    assert_equal("Alpine Super G", @event.title)
  end

  


end