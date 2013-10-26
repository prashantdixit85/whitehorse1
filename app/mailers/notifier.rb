class Notifier < ActionMailer::Base

  def send_query(user)
    @user = user
    mail to: "abhishek@xemoff.com", from: @user.email, subject: "Query of Organisation"
         
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.recrive_query.subject
  #
  def recrive_query(user)
     @user = user
    mail to: @user.email, from: "abhishek@xemoff.com", subject: "Thanks for Query"
  end
end
