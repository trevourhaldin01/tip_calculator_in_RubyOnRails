require "test_helper"

class CalculationTest < ActiveSupport::TestCase
  test "should not save calculation with negative bill amount" do
    calculation = Calculation.new(bill_amount: -50, tip_percentage: 10, people_count: 2)
    assert_not calculation.save, "Saved the calculation with a negative bill amount"
  end
  test "should not save calculation with negative tip percentage" do
    calculation = Calculation.new(bill_amount: 50, tip_percentage: -10, people_count: 2)
    assert_not calculation.save, "Saved the calculation with a negative tip percentage"
  end
  test "should not save calculation with 0 people count" do
    calculation = Calculation.new(bill_amount: 50, tip_percentage: 10, people_count: 0)
    assert_not calculation.save, "Saved the calculation with 0 people count"
  end
  test "should not save calculation with negative people count" do
    calculation = Calculation.new(bill_amount: 50, tip_percentage: 10, people_count: -2)
    assert_not calculation.save, "Saved the calculation with a negative people count"
  end

  test "should save valid calculation" do
    calculation = Calculation.new(bill_amount: 100, tip_percentage: 10, people_count: 2)
    assert calculation.save, "Failed to save a valid calculation"
  end
end
