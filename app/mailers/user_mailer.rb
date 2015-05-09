class UserMailer < ApplicationMailer
  # default from: "andoidxx@gmail.com"

  def new_user(user)
    @user  = user
    mail( to: @user.email,
          subject: 'You have a message from Freelancer test task' )
  end
end
