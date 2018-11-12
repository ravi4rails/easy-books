class NewsLetterSubscriptionsController < ApplicationController
  
  def new
    @news_letter_subscription = NewsLetterSubscription.new
  end

  def create
    @news_letter_subscription = NewsLetterSubscription.new(news_letter_subscription_params)
    respond_to do |format|
      if @news_letter_subscription.save
        NewsLetterSubscriptionNotificationMailer.news_letter_subscription_submission(@news_letter_subscription).deliver_now
        format.html { redirect_to root_path, notice: 'News letter subscription was successfully created.' }
      end
    end
  end

  
  private
    
    def news_letter_subscription_params
      params.require(:news_letter_subscription).permit(:first_name, :last_name, :email)
    end
end
