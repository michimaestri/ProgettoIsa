class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_misuration.subject
  #
  def new_misuration(misuration)
    @misuration = misuration
    @sensor = @misuration.sensor

    mail to: @sensor.user.email,
   		 Subject: "Nuova misurazione per il sensore #{@sensor.mac}"
  end
end
