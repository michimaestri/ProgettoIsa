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

  def send_alarm(misuration)
    @misuration = misuration
    @sensor = @misuration.sensor

    mail to: @sensor.user.email,
   		 Subject: "La misura #{@misuration.value} #{@misuration.unit} per il sensore con mac: #{@sensor.mac} è arrivata dopo il tempo di timeout"
  end
end
