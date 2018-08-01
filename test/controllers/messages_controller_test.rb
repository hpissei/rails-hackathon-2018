require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get message_text:text" do
    get messages_message_text:text_url
    assert_response :success
  end

end
