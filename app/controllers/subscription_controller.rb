class SubscriptionController < ApplicationController
  def new
  	@subscription = Subscription.new
  end

  def create
  end
end
