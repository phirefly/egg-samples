#Refactor this using the paramaterize method
def additional_charges
  charges = 0

  if utilized >= 100
    temp_charges = [utilized, 100].min * 0.10
    puts "additional charges up to 100: #{temp_charges}"
    charges += temp_charges
  end

  if utilized > 200
    temp_charges = [(utilized - 200), 100].min * 0.075
    charges += temp_charges
    puts "additional charges up to 200: #{temp_charges}"
  end

  if utilized > 300
    temp_charges = [(utilized - 300), 100].min * 0.05
    charges += temp_charges
    puts "additional charges up to 300: #{temp_charges}"
  end

  if utilized > 400
    temp_charges = [(utilized - 400), 100].min * 0.01
    charges += temp_charges
    puts "additional charges up to 400: #{temp_charges}"
  end

  charges
end

def utilized
  450
end

puts "Additional charges: #{additional_charges}"


#-------------------------
require "#{__dir__}/test_helper"

class TestParameterizeMethod < MiniTest::Unit::TestCase
  def test_charges_are_calculated
    assert_equal 23,additional_charges
  end
end