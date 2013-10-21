require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "send_query" do
    mail = Notifier.send_query
    assert_equal "Send query", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "recrive_query" do
    mail = Notifier.recrive_query
    assert_equal "Recrive query", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
