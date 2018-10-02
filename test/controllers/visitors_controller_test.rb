require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get visitors_welcome_url
    assert_response :success
  end

end
