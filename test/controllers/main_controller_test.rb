require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get cadUser" do
    get main_cadUser_url
    assert_response :success
  end

end
