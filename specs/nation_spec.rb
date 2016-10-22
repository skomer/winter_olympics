require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/nation.rb'

class TestNation < MiniTest::Test

  def setup
    options = {
      'name' => 'Switzerland'
    }
    @nation = Nation.new(options)
  end

  def test_nation_has_name
    assert_equal("Switzerland", @nation.name)
  end

end