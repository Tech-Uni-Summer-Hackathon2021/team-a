require 'test_helper'

class DecdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get decdates_index_url
    assert_response :success
  end

end
