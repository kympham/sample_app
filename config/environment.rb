# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!

SampleApp::Application.configure do
 	config.action_mailer.delivery_method = :smtp
 	config.action_mailer.smtp_settings = {
		address: "smtp.gmail.com",
		port: 587,
		authentication: :plain,
		user_name: "usegust@gmail.com",
		password: "green755",
		enable_starttls_auto: true
 	}
end