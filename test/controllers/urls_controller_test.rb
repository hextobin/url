require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get shorten" do
    get urls_shorten_url
    assert_response :success
  end

end
