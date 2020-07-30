# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  error_message   :string
#  payment_gateway :integer
#  price_cents     :integer          default(0), not null
#  status          :integer          default(0)
#  token           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  charge_id       :string
#  customer_id     :string
#  product_id      :integer
#  user_id         :integer
#
class Order < ApplicationRecord
end
