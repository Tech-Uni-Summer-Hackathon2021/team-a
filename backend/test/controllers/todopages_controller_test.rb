require 'test_helper'

class TodopagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todopages_index_url
    assert_response :success
  end

end
