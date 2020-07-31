module OrdersHelper
  
=begin
    { 
        price_data: {
          product_data: {
            name: "Teferi, Hero of Dominaria",
          },
          unit_amount: 2500,
        },
        quantity: 1
      },
=end

  # line items is a array that has multiple object in it.
  # every object is a product
  # line_items: [] => price_data => (product_data: {name: product_name}, unit_amount: product_price), quantity: integer
  def add_line_items
    redis = Redis.current.lrange("#{current_user.id}", 0, -1)
    temp = []
    line_items = []
    redis.each {|r| temp << JSON.parse(r)}
    temp.each {|t| line_items << { price_data: { currency: 'usd', unit_amount: 2500, product_data: { name: t["name"] } }, quantity: 1 }}
    line_items
  end
end
