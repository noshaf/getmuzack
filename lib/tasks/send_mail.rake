task :send_mail => :environment do
	SubscriptionMailer.weekly_email(Subscription.all).deliver
end

task :send_test_mail => :environment do
  noah = Subscription.where(:email => "noshaf@gmail.com")
  SubscriptionMailer.weekly_email(noah).deliver
end

task :get_emails => :environment do
	Subscription.all.each do |s|
		puts s.email
	end
end