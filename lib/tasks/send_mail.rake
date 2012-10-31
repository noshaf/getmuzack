task :send_mail => :environment do
	SubscriptionMailer.weekly_email(Subscription.all).deliver
end

task :get_emails => :environment do
	Subscription.all.each do |s|
		puts s.email
	end
end