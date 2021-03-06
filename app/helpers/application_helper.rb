module ApplicationHelper
  include Pagy::Frontend

  def set_name(set)
    case set
      when "eld"
        "Throne of Eldraine"
      when "iko"
        "Ikoria: Lair of Behemoths"
      when "thb"
        "Theros Beyond Death"
    end
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    link_to set_name(column), {:sort => column}
  end

  # Redis stuff
  def print_cart
    cart = Redis.current.lrange("test2", 0, -1)
  end

  def push_to_cart(product)
    Redis.current.lpush("test2", product)
  end
end
