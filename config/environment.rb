# Load the rails application
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
  :user_name => "app17776674@heroku.com",
  :password => "lxetiqlb",
  :domain => "getmuzack.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the rails application
Getmuzack::Application.initialize!
