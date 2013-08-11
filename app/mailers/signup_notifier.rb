class SignupNotifier < ActionMailer::Base
  default from: 'GUST <usegust@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.signup_notifier.confirmed.subject
  #
  def confirmed(user)
    @greeting = "Hey"
    @user = user
    mail to: user.email, subject: 'Welcome to GUST!'
  end
end
