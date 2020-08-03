module OrdersHelper
  def add_line_items
    redis = Redis.current.lrange("#{current_user.id}", 0, -1)
    temp = []
    line_items = []
    redis.each {|r| temp << JSON.parse(r)}
    temp.each {|t| line_items << { price_data: { currency: 'usd', unit_amount: 2500, product_data: { name: t["name"] } }, quantity: 1 }}
    line_items
  end
end
