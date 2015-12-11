require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "post" do
    mail = UserMailer.post
    assert_equal "Post", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
