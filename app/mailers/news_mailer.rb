class NewsMailer < ActionMailer::Base


  def welcome(user_id)
    @user = User.find(user_id)
    mail :subject => "welcome to lease the life",
    :to => @user.email,
    :from =>  "LTLteam@leasethelife.com"
  end

  def posts(user, post)
    @user = user
    @post = post
    mail :subject => "hello #{@post.title}",
    :to => @user.email,
    :from => "LTLteam@leasethelife.com"

  end
end
