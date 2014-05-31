class PostMailer < ActionMailer::Base
  default from: "Example.com<no-reply@example.com>"
  def newactivity(user)
    @user = user

    mail(to: @user.email, subject: 'New Activity')
   end
end
