# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  image_uris       :string
#  name             :string
#  oracle_text      :string
#  paypal_plan_name :string
#  price_cents      :integer          default(0), not null
#  price_currency   :string           default("USD"), not null
#  set              :string
#  stripe_plan_name :string
#  card_id          :string
#
class Product < ApplicationRecord
  monetize :price_cents
  has_many :orders

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
  
end
