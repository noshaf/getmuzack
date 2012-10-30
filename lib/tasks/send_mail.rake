task :send_mail
	SubscriptionMailer.send_mail.deliver
end