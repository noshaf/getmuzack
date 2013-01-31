class SubscriptionMailer < ActionMailer::Base
  default from: "GotConcert@gotconcert.com"

  def welcome_email(subscription)
    mail(:to => subscription.email, :subject => "Welcome to Got Concert!")
  end

  def weekly_email(subscription)
		mail(:to => subscription.email, :subject => "Got Concert Weekly Mail")
  end

  def alert_email(subscription)
    mail(:to => subscription.email, :subject => "Early Bird Specials!")
  end

end
