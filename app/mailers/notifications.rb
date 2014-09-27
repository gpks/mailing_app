class Notifications < ActionMailer::Base
  default from: "from@example.com" #od kogo - i tu można się podszywać ;P

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.hello.subject
  #
  def hello(email)
    @greeting = "Hi"

    mail to: email
  end

   def code(user)
    @greeting = user.code

    mail to: user.email
  end
end
