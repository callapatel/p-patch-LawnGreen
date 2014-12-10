class NewsMailer < ActionMailer::Base
  default from: "mcomcalla@gmail.com"

  def welcome
    mail(to: "callapatel@gmail.com", subject: "Welcome to Live The Life")
  end

end
