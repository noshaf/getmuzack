class SubscriptionMailer < ActionMailer::Base
  default from: "Welcome@getMuzack.com"

  def welcome_email(subscription)
    @subscription = subscription
    mail(:to => subscription.email, :subject => "Welcome to Get Muzack!")
  end

  def weekly_email
  	@subscriptions = Subscripions.all
  	@subscriptions.each do |s|
  		mail(:to => s.email, :subject => "Get Muzack Weekly Mail")
  	end
  end

end
