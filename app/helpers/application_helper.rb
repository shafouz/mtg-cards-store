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
end
