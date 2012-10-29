class SubscriptionsController < ApplicationController
  
  def new
  	@subscription = Subscription.new
  end

  def create
  	@subscription = Subscription.new(params[:subscription])
  	if @subscription.save

  		SubscriptionMailer.welcome_email(@subscription).deliver

  		redirect_to new_subscription_path, :alert => "Thanks for signing up!"
  	else
  		redirect_to new_subscription_path, :alert => "Invalid email"
  	end
  end
end
