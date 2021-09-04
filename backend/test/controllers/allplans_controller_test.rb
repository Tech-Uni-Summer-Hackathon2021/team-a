require 'test_helper'

class AllplansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get allplans_index_url
    assert_response :success
  end

  test "should get show" do
    get allplans_show_url
    assert_response :success
  end

end
