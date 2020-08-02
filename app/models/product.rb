# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  image_uris  :string
#  name        :string
#  oracle_text :string
#  set         :string
#  card_id     :string
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
