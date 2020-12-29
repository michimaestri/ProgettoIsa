# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_misuration
  def new_misuration
  	misuration = Misuration.last
    UserMailer.new_misuration(misuration)
  end

  def send_alarm
    misuration = Misuration.last
    UserMailer.send_alarm(misuration)
  end

end
