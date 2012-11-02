class SubscriptionMailer < ActionMailer::Base
  default from: "EDM@GotConcert.com"

  def welcome_email(subscription)
    @subscription = subscription
    mail(:to => subscription.email, :subject => "Welcome to Get Muzack!")
  end

  def weekly_email(subscriptions)
  	@subscriptions = subscriptions
  	@subscriptions.each do |s|
  		mail(:to => s.email, :subject => "Get Muzack Weekly Mail")
  	end
  end

end
