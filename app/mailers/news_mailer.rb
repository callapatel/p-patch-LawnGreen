class NewsMailer < ActionMailer::Base
  default from: "mcomcalla@gmail.com"

  def welcome(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: "welcome!")
  end

end
