class UsersMailer < ApplicationMailer
    
  def user_created
    @user = params[:user]
    @url  = '#'
    mail(to: @user.email, subject: 'New User Created')
  end
end
