class OrderMailer < ApplicationMailer
  default from: "#{ENV["EMAIL"]}"

  def success_order_email
    @user = params[:user]
    @list = params[:list]
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Order completed on Mtg-cards-store')
  end
end
