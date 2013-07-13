#Refactor this using the paramaterize method

def additional_charges_for(utilized)
  @utilized = utilized
  charges = 0
  tiers = {
    "100"=>0.10,
    "200"=>0.075,
    "300"=>0.05,
    "400"=>0.01
  }

  tiers.each { |key,value| charges += charges_for_tier(key,value) }
  charges
end

def charges_for_tier(tier,percentage)
  tier = tier.to_i
  if @utilized >= tier
    [(@utilized - tier), 100].min * percentage
  end
end


#-------------------------
require "#{__dir__}/test_helper"

class TestParameterizeMethod < MiniTest::Unit::TestCase
  def test_charges_are_calculated
    assert_equal 23, additional_charges_for(450)
  end
end