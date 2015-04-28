# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Setting up mail server, allow less secure apps to access gmail (setup through gmail account)
Rails.application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    authentication:       "plain",
    email:                ENV['gmail_username'],
    password:             ENV['gmail_password'],
    enable_starttls_auto: true
  }
end
