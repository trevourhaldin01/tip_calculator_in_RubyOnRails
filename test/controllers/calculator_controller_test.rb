require "test_helper"

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculator_index_url
    assert_response :success
  end
  test "should calculate tip successfully" do
    get root_path, params: { bill_amount: 100, tip_percentage: 10, people_count: 2 }
    assert_response :success
    assert_match "Tip Amount", @response.body
  end

  test "should display error for zero people" do
    get root_path, params: { bill_amount: 100, tip_percentage: 10, people_count: 0 }
    assert_response :success
    assert_match "Number of people cannot be 0.", @response.body
  end
end
