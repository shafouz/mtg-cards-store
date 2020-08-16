require "rails_helper"

RSpec.describe User, :type => :mailer do
  describe "welcome email" do
    let(:user) { User.create(name: 'Joao', email: 'example@example.com') }
    let(:mail) { UserMailer.with(user: user).welcome_email.deliver_now }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome to My Awesome Site")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["#{ENV["EMAIL"]}"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Welcome")
    end
  end
end
