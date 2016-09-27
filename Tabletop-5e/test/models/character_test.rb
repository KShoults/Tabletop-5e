require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  def setup
    @character1 = characters(:one)
    @character2 = characters(:two)
  end
  
  test "characters should be valid" do
    assert @character1.valid?
  end
end
