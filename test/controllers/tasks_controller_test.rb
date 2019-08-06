require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get action" do
    get tasks_action_url
    assert_response :success
  end

end
