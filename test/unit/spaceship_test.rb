require 'test_helper'

class SpaceshipTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Spaceship.new.valid?
  end
end
