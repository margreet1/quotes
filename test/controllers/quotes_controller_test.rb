require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quotes_index_url
    assert_response :success
  end

  test "should get import" do
    get quotes_import_url
    assert_response :success
  end

end
