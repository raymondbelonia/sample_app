class UserMailer < ActionMailer::Base
  default from: "sampleapplicationzero@gmail"

  def registration_confirmation(user)
  	@user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration to the Sample App")
  end

  def follower_notification(user)
  	@user = user
  	mail(:to => "#{user.name} <#{user.email}>" , :subject => "Someone followed you!")
  end

end
