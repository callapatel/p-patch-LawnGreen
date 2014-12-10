class NewsMailer < ActionMailer::Base
  default from: "mcomcalla@gmail.com"

  def welcome(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: "welcome!")
  end

  def posts(user, post)
    @user = user
    @post = post
    mail(to: @user.email, subject: "hello #{@post.title}" )

  end
end
