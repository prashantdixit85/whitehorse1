class Notifier < ActionMailer::Base
 
  def send_query(user)
    @user = user
    mail to: "abhishek@xemoff.com", from: @user.email, subject: "Query of Organisation"
         
  end

  def recrive_query(user)
     @user = user
    mail to: @user.email, from: "abhishek@xemoff.com", subject: "Thanks for Query"
  end
end
