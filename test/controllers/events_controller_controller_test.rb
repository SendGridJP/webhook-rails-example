require 'test_helper'

class EventsControllerControllerTest < ActionController::TestCase
  test "should get handle_post" do
    post :handle_post
    assert_response :success
  end

end
