# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  set        :string
#  card_id    :string
#  image_uris :string
#
class Product < ApplicationRecord

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
  
  
end
