class UserMailer < ApplicationMailer


  def update_service(user)
  	@user = user
    mail to: "pixelzip0@gmail.com", subject: "Atualização nos serviços"
  end


end
