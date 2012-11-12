task :send_weekly_email => :environment do
	SubscriptionMailer.weekly_email(Subscription.all).deliver
end

task :send_weekly_test_email => :environment do
  noah = Subscription.where(:email => "noshaf@gmail.com")
  SubscriptionMailer.weekly_email(noah).deliver
end

task :send_welcome_test_email => :environment do
  noah = Subscription.where(:email => "noshaf@gmail.com")
  SubscriptionMailer.welcome_email(noah).deliver
end

task :get_emails => :environment do
	Subscription.all.each do |s|
		puts s.email
	end
end
