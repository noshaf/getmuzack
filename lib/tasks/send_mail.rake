task :send_weekly_email => :environment do
	Subscription.all.each do |s|
		SubscriptionMailer.weekly_email(s).deliver
	end
end

task :send_weekly_test_email => :environment do
  noah = Subscription.where(:email => "noshaf@gmail.com")
  SubscriptionMailer.weekly_email(noah).deliver
end

task :send_welcome_test_email => :environment do
  noah = Subscription.where(:email => "noshaf@gmail.com").first
  SubscriptionMailer.welcome_email(noah).deliver
end

task :get_emails => :environment do
	Subscription.all.each do |s|
		puts s.email
	end
end

task :email_count => :environment do
  puts Subscription.all.count
end
