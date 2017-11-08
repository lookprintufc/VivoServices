require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "update_service" do
    mail = UserMailer.update_service
    assert_equal "Update service", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
