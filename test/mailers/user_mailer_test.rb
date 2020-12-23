require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "new_misuration" do
    mail = UserMailer.new_misuration
    assert_equal "New misuration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
