class SubscriptionMailer < ActionMailer::Base
  default from: "Welcome@getMuzack.com"

  def welcome_email(subscription)
    @subscription = subscription
    mail(:to => subscription.email, :subject => "Welcome to Get Muzack!")
  end

end
