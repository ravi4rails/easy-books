class NewsLetterSubscriptionNotificationMailer < ApplicationMailer
  default from: 'notificatons@example.com'
  def news_letter_subscription_submission news_letter_subscription
    @news_letter_subscription = news_letter_subscription
    mail(to: @news_letter_subscription.email, subject: 'Successfull News Letter Subscription')
  end

  def shop_notification_mailer(admin)
    @admin = admin
    mail(to: @admin.email, subject: "New Shop Registration Notificaton")
  end

end
